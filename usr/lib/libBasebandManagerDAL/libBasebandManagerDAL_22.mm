void sub_2973921F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
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

uint64_t util::convert<BOOL>(const std::string *a1, BOOL *a2, int a3)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a1->__r_.__value_.__r.__words[0];
    if (strcasecmp(a1->__r_.__value_.__l.__data_, "false") && strcasecmp(v6, "off") && strcasecmp(v6, "no"))
    {
      if (!strcasecmp(v6, "true") || !strcasecmp(v6, "on") || !strcasecmp(v6, "yes") || !strcasecmp(v6, "full") || !strcasecmp(v6, "streaming") || !strcasecmp(v6, "lite"))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

LABEL_28:
    v10 = 0;
LABEL_30:
    *a2 = v10;
    return 1;
  }

  if (!strcasecmp(a1, "false") || !strcasecmp(a1, "off") || !strcasecmp(a1, "no"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(a1, "true"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "on"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "yes"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "full"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "streaming"))
  {
    goto LABEL_29;
  }

  v6 = a1;
  if (!strcasecmp(a1, "lite"))
  {
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v6, "background"))
  {
LABEL_29:
    v10 = 1;
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v7 = std::stol(a1, &__idx, a3);
  result = 0;
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v10 = v7 != 0;
  if (__idx == size && v7 < 2)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_297392530(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t prop::file::set<BOOL>(const void **a1, uint64_t a2, unsigned __int8 *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v32, 0, sizeof(v32));
    v10 = &v32;
    *(&v32.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v32.__r_.__value_.__l.__size_ = v4 + 1;
    v32.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v32.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a1;
  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v10, v12, v4);
LABEL_15:
  *&v10[v4] = 46;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v32, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p[2] = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v18 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  for (; v19 != v18; v19 = (v19 + 1))
  {
    *v19 = __tolower(*v19);
  }

  std::to_string(&v32, *a3);
  v20 = *&v32.__r_.__value_.__l.__data_;
  v21 = v32.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E34960;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v23;
    *(&xmmword_2A1399338 + 1) = v22;
    if (!v24)
    {
      *&v30 = v23;
      *(&v30 + 1) = v22;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  v22 = *(&xmmword_2A1399338 + 1);
  LODWORD(v23) = xmmword_2A1399338;
  v30 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v21 & 0x8000000000000000) == 0)
  {
    *&v29.__r_.__value_.__l.__data_ = v20;
    v29.__r_.__value_.__r.__words[2] = v21;
LABEL_42:
    v32 = v29;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v29, v20, *(&v20 + 1));
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v32, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  v26 = ctu::cf::plist_adapter::set<std::string>(v23, &v32, v25);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v29.__r_.__value_.__l.__data_);
    v27 = *(&v30 + 1);
    if (!*(&v30 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v27 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_53:
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v20);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v26;
    }

LABEL_58:
    operator delete(__p[0]);
    return v26;
  }

LABEL_52:
  if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v26;
}

void sub_2973928D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<int>(const void **a1, uint64_t a2, int *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v32, 0, sizeof(v32));
    v10 = &v32;
    *(&v32.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v32.__r_.__value_.__l.__size_ = v4 + 1;
    v32.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v32.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a1;
  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v10, v12, v4);
LABEL_15:
  *&v10[v4] = 46;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v32, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p[2] = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v18 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  for (; v19 != v18; v19 = (v19 + 1))
  {
    *v19 = __tolower(*v19);
  }

  std::to_string(&v32, *a3);
  v20 = *&v32.__r_.__value_.__l.__data_;
  v21 = v32.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E34960;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v23;
    *(&xmmword_2A1399338 + 1) = v22;
    if (!v24)
    {
      *&v30 = v23;
      *(&v30 + 1) = v22;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  v22 = *(&xmmword_2A1399338 + 1);
  LODWORD(v23) = xmmword_2A1399338;
  v30 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v21 & 0x8000000000000000) == 0)
  {
    *&v29.__r_.__value_.__l.__data_ = v20;
    v29.__r_.__value_.__r.__words[2] = v21;
LABEL_42:
    v32 = v29;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v29, v20, *(&v20 + 1));
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v32, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  v26 = ctu::cf::plist_adapter::set<std::string>(v23, &v32, v25);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v29.__r_.__value_.__l.__data_);
    v27 = *(&v30 + 1);
    if (!*(&v30 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v27 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_53:
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v20);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v26;
    }

LABEL_58:
    operator delete(__p[0]);
    return v26;
  }

LABEL_52:
  if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v26;
}

void sub_297392D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<unsigned int>(const void **a1, uint64_t a2, unsigned int *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v32, 0, sizeof(v32));
    v10 = &v32;
    *(&v32.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v32.__r_.__value_.__l.__size_ = v4 + 1;
    v32.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v32.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a1;
  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v10, v12, v4);
LABEL_15:
  *&v10[v4] = 46;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v32, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p[2] = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v18 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  for (; v19 != v18; v19 = (v19 + 1))
  {
    *v19 = __tolower(*v19);
  }

  std::to_string(&v32, *a3);
  v20 = *&v32.__r_.__value_.__l.__data_;
  v21 = v32.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E34960;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v23;
    *(&xmmword_2A1399338 + 1) = v22;
    if (!v24)
    {
      *&v30 = v23;
      *(&v30 + 1) = v22;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  v22 = *(&xmmword_2A1399338 + 1);
  LODWORD(v23) = xmmword_2A1399338;
  v30 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v21 & 0x8000000000000000) == 0)
  {
    *&v29.__r_.__value_.__l.__data_ = v20;
    v29.__r_.__value_.__r.__words[2] = v21;
LABEL_42:
    v32 = v29;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v29, v20, *(&v20 + 1));
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v32, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  v26 = ctu::cf::plist_adapter::set<std::string>(v23, &v32, v25);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v29.__r_.__value_.__l.__data_);
    v27 = *(&v30 + 1);
    if (!*(&v30 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v27 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_53:
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v20);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v26;
    }

LABEL_58:
    operator delete(__p[0]);
    return v26;
  }

LABEL_52:
  if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v26;
}

void sub_297393188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<std::string>(const void **a1, uint64_t a2, uint64_t a3)
{
  memset(v29, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v30, 0, sizeof(v30));
    v10 = &v30;
    *(&v30.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v30.__r_.__value_.__l.__size_ = v4 + 1;
    v30.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v30.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a1;
  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v10, v12, v4);
LABEL_15:
  *&v10[v4] = 46;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v29[2] = v16->__r_.__value_.__r.__words[2];
  *v29 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29[2]) >= 0)
  {
    v18 = (v29 + HIBYTE(v29[2]));
  }

  else
  {
    v18 = (v29[0] + v29[1]);
  }

  if (SHIBYTE(v29[2]) >= 0)
  {
    v19 = v29;
  }

  else
  {
    v19 = v29[0];
  }

  for (; v19 != v18; v19 = (v19 + 1))
  {
    *v19 = __tolower(*v19);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v21 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v21, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v30.__r_.__value_.__r.__words[0] = v21;
    v20 = operator new(0x20uLL);
    *v20 = &unk_2A1E34960;
    v20[1] = 0;
    v20[2] = 0;
    v20[3] = v21;
    v22 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v21;
    *(&xmmword_2A1399338 + 1) = v20;
    if (!v22)
    {
      *&v28 = v21;
      *(&v28 + 1) = v20;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  v20 = *(&xmmword_2A1399338 + 1);
  LODWORD(v21) = xmmword_2A1399338;
  v28 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = __p;
  }

  if (SHIBYTE(v29[2]) >= 0)
  {
    v23 = v29;
  }

  else
  {
    v23 = v29[0];
  }

  v24 = ctu::cf::plist_adapter::set<std::string>(v21, &v30, v23);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_50:
      v25 = *(&v28 + 1);
      if (!*(&v28 + 1))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v25 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    goto LABEL_55;
  }

LABEL_54:
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    if ((SHIBYTE(v29[2]) & 0x80000000) == 0)
    {
      return v24;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (SHIBYTE(v29[2]) < 0)
  {
LABEL_56:
    operator delete(v29[0]);
  }

  return v24;
}

void sub_2973935C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t util::convert<unsigned int>(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v4) = strcasecmp(a1, "false");
    if (!v4)
    {
      goto LABEL_29;
    }

    LODWORD(v4) = strcasecmp(a1, "off");
    if (!v4)
    {
      goto LABEL_29;
    }

    LODWORD(v4) = strcasecmp(a1, "no");
    if (!v4)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v4) = 1;
    goto LABEL_29;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v4) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v4) = strcasecmp(v5, "off");
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v4) = strcasecmp(v5, "no");
  if (!v4)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_30:
    LODWORD(v4) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v4 = std::stol(a1, &__idx, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || (v4 & 0x8000000000000000) != 0 || HIDWORD(v4))
  {
    return 0;
  }

LABEL_29:
  *a2 = v4;
  return 1;
}

uint64_t sub_2973938AC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void prop::bbtrace::get<int>(char *a1, _DWORD *a2)
{
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a1, &__p))
  {
    util::convert<int>(&__p, a2, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_297393938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::enabled(prop::tracesettings *this, const char *a2)
{
  v30 = 0;
  if (*MEMORY[0x29EDBE710] == this)
  {
    v6 = strlen(this);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_63:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v6 | 7) + 1;
      }

      p_dst = operator new(v15);
      v28 = v7;
      v29 = v15 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v29) = v6;
      p_dst = &__dst;
      if (!v6)
      {
LABEL_38:
        *(p_dst + v7) = 0;
        v16 = *MEMORY[0x29EDBE590];
        v17 = strlen(*MEMORY[0x29EDBE590]);
        if (v17 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v18 = v17;
        if (v17 >= 0x17)
        {
          if ((v17 | 7) == 0x17)
          {
            v20 = 25;
          }

          else
          {
            v20 = (v17 | 7) + 1;
          }

          v19 = operator new(v20);
          v25 = v18;
          v26 = v20 | 0x8000000000000000;
          v24 = v19;
        }

        else
        {
          HIBYTE(v26) = v17;
          v19 = &v24;
          if (!v17)
          {
LABEL_47:
            *(v19 + v18) = 0;
            memset(&__p, 0, sizeof(__p));
            if (prop::get(&__dst, &v24, &__p))
            {
              v31 = -1431655766;
              v21 = util::convert<int>(&__p, &v31, 0);
              if (v31)
              {
                v22 = 1;
              }

              else
              {
                v22 = v21 ^ 1;
              }

              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_55:
                if (SHIBYTE(v26) < 0)
                {
                  operator delete(v24);
                  if ((SHIBYTE(v29) & 0x80000000) == 0)
                  {
LABEL_57:
                    if (!v21)
                    {
                      return v30;
                    }

                    return v22;
                  }
                }

                else if ((SHIBYTE(v29) & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

                operator delete(__dst);
                if (!v21)
                {
                  return v30;
                }

                return v22;
              }
            }

            else
            {
              v21 = 0;
              v22 = 1;
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_55;
              }
            }

            operator delete(__p.__r_.__value_.__l.__data_);
            goto LABEL_55;
          }
        }

        memmove(v19, v16, v18);
        goto LABEL_47;
      }
    }

    memcpy(p_dst, this, v7);
    goto LABEL_38;
  }

  v3 = strlen(this);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_63;
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v3 | 7) + 1;
    }

    v5 = operator new(v9);
    v28 = v4;
    v29 = v9 | 0x8000000000000000;
    __dst = v5;
    goto LABEL_14;
  }

  HIBYTE(v29) = v3;
  v5 = &__dst;
  if (v3)
  {
LABEL_14:
    memcpy(v5, this, v4);
  }

  *(v5 + v4) = 0;
  v10 = *MEMORY[0x29EDBE6E0];
  v11 = strlen(*MEMORY[0x29EDBE6E0]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    v25 = v12;
    v26 = v14 | 0x8000000000000000;
    v24 = v13;
    goto LABEL_23;
  }

  HIBYTE(v26) = v11;
  v13 = &v24;
  if (v11)
  {
LABEL_23:
    memmove(v13, v10, v12);
  }

  *(v13 + v12) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::get(&__dst, &v24, &__p))
  {
    util::convert<BOOL>(&__p, &v30, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_28:
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_32;
      }

      return v30;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v24);
  if (SHIBYTE(v29) < 0)
  {
LABEL_32:
    operator delete(__dst);
  }

  return v30;
}

void sub_297393C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::anyEnabled(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBE710], v2) || prop::tracesettings::enabled(*MEMORY[0x29EDBE5F8], v3) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v4) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v5) || prop::tracesettings::enabled(*MEMORY[0x29EDBE7A8], v6))
  {
    return 1;
  }

  v9 = *MEMORY[0x29EDBE608];

  return prop::tracesettings::enabled(v9, v7);
}

BOOL prop::tracesettings::isContinuous(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v2))
  {
    return 1;
  }

  v5 = *MEMORY[0x29EDBE690];

  return prop::tracesettings::enabled(v5, v3);
}

BOOL prop::tracesettings::mobileBasebandServicesEnabled(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v2))
  {
    return 1;
  }

  v5 = *MEMORY[0x29EDBE690];

  return prop::tracesettings::enabled(v5, v3);
}

void ___ZL16sGetOsLogContextv_block_invoke_5()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "prop");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void prop::file::get<std::string>(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(__p, 170, sizeof(__p));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v28, 0, sizeof(v28));
    v12 = &v28;
    *(&v28.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    v12 = operator new(v11);
    v28.__r_.__value_.__l.__size_ = v6 + 1;
    v28.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    v28.__r_.__value_.__r.__words[0] = v12;
  }

  v13 = *a1;
  if (v5 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  memmove(v12, v14, v6);
LABEL_15:
  *&v12[v6] = 46;
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  __p[2] = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v20 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  for (; v21 != v20; v21 = (v21 + 1))
  {
    *v21 = __tolower(*v21);
  }

  memset(a4, 170, sizeof(std::string));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a3, *(a3 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v30 = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E34960;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v23;
    *(&xmmword_2A1399338 + 1) = v22;
    if (!v24)
    {
      v28.__r_.__value_.__r.__words[0] = v23;
      v28.__r_.__value_.__l.__size_ = v22;
      goto LABEL_41;
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  v22 = *(&xmmword_2A1399338 + 1);
  v23 = xmmword_2A1399338;
  *&v28.__r_.__value_.__l.__data_ = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_41:
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v30, v25);
  v26 = (**v23)(v23, v30);
  if (v26)
  {
    ctu::cf::assign();
    CFRelease(v26);
  }

  MEMORY[0x29C26DF80](&v30);
  size = v28.__r_.__value_.__l.__size_;
  if (!v28.__r_.__value_.__l.__size_ || atomic_fetch_add((v28.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_50;
  }

  (size->__on_zero_shared)(size);
  std::__shared_weak_count::__release_weak(size);
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_50:
    operator delete(__p[0]);
  }
}

void sub_297394234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&a22);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_16()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297288000);
  }

  return result;
}

void CMOnBodyDelegate::create(NSObject **this@<X0>, queue a2@<0:X1>, CMOnBodyDelegate **a3@<X8>)
{
  if (([MEMORY[0x29EDB93C8] isOnBodyStatusDetectionAvailable] & 1) == 0)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A1399CD8 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v12 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        *a3 = 0;
        a3[1] = 0;
        return;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
      v12 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "Motion on-body detection is not available on this device", buf, 2u);
    goto LABEL_12;
  }

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x40uLL);
  v6 = *this;
  v14 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7.fObj.fObj = &v14;
  CMOnBodyDelegate::CMOnBodyDelegate(v5, v7);
  *a3 = v5;
  v8 = operator new(0x28uLL);
  v8[1] = 0;
  v9 = v8 + 1;
  *v8 = &unk_2A1E3BA18;
  v8[2] = 0;
  v8[3] = v5;
  v8[4] = &__block_literal_global_12;
  a3[1] = v8;
  v10 = *(v5 + 1);
  if (!v10)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v5 = v5;
    *(v5 + 1) = v8;
    if (atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v10->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v5 = v5;
    *(v5 + 1) = v8;
    v11 = v8;
    std::__shared_weak_count::__release_weak(v10);
    v8 = v11;
    if (!atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      v13 = v8;
      (*(*v8 + 16))();
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_15:
  if (v6)
  {

    dispatch_release(v6);
  }
}

void sub_297394568(void *a1)
{
  v2 = __cxa_begin_catch(a1);
  _block_invoke(v2, v1);
  __cxa_rethrow();
}

void sub_29739457C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void _block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = _block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v2, block);
}

void _block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CMOnBodyDelegate::~CMOnBodyDelegate(v1);

    operator delete(v2);
  }
}

void CMOnBodyDelegate::CMOnBodyDelegate(CMOnBodyDelegate *this, queue a2)
{
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", "cm.onbody");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this + 16, v5);
  MEMORY[0x29C26DE80](v5);
  ctu::OsLogContext::~OsLogContext(v4);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 3) = *a2.fObj.fObj;
}

uint64_t CMOnBodyDelegate::shutdown(CMOnBodyDelegate *this)
{
  result = [objc_msgSend(MEMORY[0x29EDB93C8] "sharedOnBodyStatusManager")];
  if (*(this + 3))
  {
    *(this + 3) = 0;
  }

  return result;
}

uint64_t CMOnBodyDelegate::stopMotionDetection(CMOnBodyDelegate *this)
{
  v1 = [MEMORY[0x29EDB93C8] sharedOnBodyStatusManager];

  return [v1 stopOnBodyStatusDetection];
}

void CMOnBodyDelegate::~CMOnBodyDelegate(CMOnBodyDelegate *this)
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
  v7 = *(this + 7);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 5);
    v10 = *(this + 4);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11)
        {
          dispatch_release(v11);
        }

        v13 = *(v9 - 16);
        v9 -= 16;
        v12 = v13;
        if (v13)
        {
          _Block_release(v12);
        }
      }

      while (v9 != v8);
      v10 = *(this + 4);
    }

    *(this + 5) = v8;
    operator delete(v10);
  }

  MEMORY[0x29C26DE80](this + 16);
  v14 = *(this + 1);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void CMOnBodyDelegate::startMotionDetection(CMOnBodyDelegate *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 7))
    {
      goto LABEL_5;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    if (*(this + 7))
    {
LABEL_5:
      v6 = [MEMORY[0x29EDB93C8] sharedOnBodyStatusManager];
      v7 = *(this + 3);
      v8 = *(this + 7);
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 3321888768;
      v10[2] = ___ZN16CMOnBodyDelegate20startMotionDetectionEv_block_invoke;
      v10[3] = &__block_descriptor_48_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE_e36_v24__0__CMOnBodyStatus_8__NSError_16l;
      v10[4] = v3;
      v11 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      [v6 startOnBodyStatusDetectionToQueue:v7 withParameters:v8 handler:v10];
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      goto LABEL_10;
    }
  }

  v9 = *(this + 2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Motion parameters not set, cannot start motion detection!", buf, 2u);
  }

LABEL_10:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_2973949E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    std::__shared_weak_count::__release_weak(v14);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void ___ZN16CMOnBodyDelegate20startMotionDetectionEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        CMOnBodyDelegate::motionCallback_sync(v7, [a2 result], objc_msgSend(a2, "confidence"));
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void CMOnBodyDelegate::motionCallback_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 != v4)
  {
    while (!*v3)
    {
      v7 = 0;
      v8 = *(v3 + 8);
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (!v7)
      {
        v10 = 0;
        v12 = MEMORY[0x29EDCA5F8];
        v13 = 3321888768;
        v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEclIJS2_S3_EEEvDpT__block_invoke;
        v15 = &__block_descriptor_48_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE_e5_v8__0l;
LABEL_13:
        v11 = 0;
        goto LABEL_14;
      }

      v9 = _Block_copy(v7);
      v10 = v9;
      v12 = MEMORY[0x29EDCA5F8];
      v13 = 3321888768;
      v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEclIJS2_S3_EEEvDpT__block_invoke;
      v15 = &__block_descriptor_48_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE_e5_v8__0l;
      if (!v9)
      {
        goto LABEL_13;
      }

      v11 = _Block_copy(v9);
LABEL_14:
      aBlock = v11;
      v17 = a2;
      v18 = a3;
      dispatch_async(v8, &v12);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (v8)
      {
        dispatch_release(v8);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v3 += 16;
      if (v3 == v4)
      {
        return;
      }
    }

    v7 = _Block_copy(*v3);
    v8 = *(v3 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    dispatch_retain(v8);
    goto LABEL_7;
  }
}

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
      _os_log_error_impl(&dword_297288000, v3, OS_LOG_TYPE_ERROR, "Motion parameters already set, ignore request to set them again", buf, 2u);
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
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Motion parameters set successfully", v7, 2u);
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
    return off_29EE68558[a1];
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
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
  if (v2 == 0x800000029743419CLL)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000029743419CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029743419CLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029743419CLL & 0x7FFFFFFFFFFFFFFFLL));
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

uint64_t *GetOsLogContext(void)
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken != -1)
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
  }

  return &GetOsLogContext(void)::sOsLogContext;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void SARModule::create(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x160uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v15[0] = v6;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SARModule::SARModule(v4, v15);
  *a2 = v5;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x20uLL);
  v8[1] = 0;
  v9 = v8 + 1;
  *v8 = &unk_2A1E3BD88;
  v8[2] = 0;
  v8[3] = v5;
  *(a2 + 8) = v8;
  v10 = *(v5 + 80);
  if (!v10)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *(v5 + 72) = v5;
    *(v5 + 80) = v8;
    if (atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v10->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *(v5 + 72) = v5;
    *(v5 + 80) = v8;
    v11 = v8;
    std::__shared_weak_count::__release_weak(v10);
    v8 = v11;
    if (!atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_8:
      v12 = v8;
      (*(*v8 + 16))();
      std::__shared_weak_count::__release_weak(v12);
    }
  }

LABEL_9:
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (!*a2)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A1399CD8 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v13 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
      v13 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    v14[0] = 0;
    _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Failed to create SAR Module!", v14, 2u);
  }

LABEL_15:
  SARModule::init(*a2);
}

void sub_297395538(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<SARModule> ctu::SharedSynchronizable<SARModule>::make_shared_ptr<SARModule>(SARModule*)::{lambda(SARModule*)#1}::operator() const(SARModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_297395560(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(a1);
}

void SARModule::init(SARModule *this)
{
  v104 = *MEMORY[0x29EDCA608];
  v2 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v3 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&buf, v2);
    v4 = *&buf.__r_.__value_.__l.__data_;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    v5 = *(&off_2A1399388 + 1);
    off_2A1399388 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v3 = off_2A1399388;
  }

  __dst.__r_.__value_.__r.__words[0] = v3;
  __dst.__r_.__value_.__l.__size_ = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v7 = *(this + 12);
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  (*(*v3 + 56))(&v97, v3, &object);
  v8 = v97;
  v97 = 0uLL;
  v9 = *(this + 32);
  *(this + 248) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v97 + 1);
  if (*(&v97 + 1) && !atomic_fetch_add((*(&v97 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = object;
  if (object)
  {
    dispatch_release(object);
  }

  v12 = __dst.__r_.__value_.__l.__size_;
  if (!__dst.__r_.__value_.__l.__size_ || atomic_fetch_add((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 31))
    {
      goto LABEL_24;
    }

LABEL_34:
    v21 = *(this + 13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to create antenna command driver", &buf, 2u);
    }

    goto LABEL_160;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!*(this + 31))
  {
    goto LABEL_34;
  }

LABEL_24:
  if (capabilities::radio::maverick(v11))
  {
    memset(&buf, 170, 16);
    v14 = *(this + 9);
    v13 = *(this + 10);
    v100 = v14;
    if (!v13 || (v15 = std::__shared_weak_count::lock(v13), (v101 = v15) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v16 = v15;
    v17 = operator new(0x30uLL);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = &unk_2A1E3BDD8;
    v18 = (v17 + 3);
    v100 = 0;
    v101 = 0;
    v17[3] = &unk_2A1E3BE80;
    v17[4] = v14;
    v17[5] = v16;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v17[3] = &unk_2A1E3BE28;
      buf.__r_.__value_.__r.__words[0] = (v17 + 3);
      buf.__r_.__value_.__l.__size_ = v17;
      v19 = v101;
      if (v101)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = v17;
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      v17 = v22;
      *(v22 + 24) = &unk_2A1E3BE28;
      buf.__r_.__value_.__r.__words[0] = v18;
      buf.__r_.__value_.__l.__size_ = v22;
      v19 = v101;
      if (v101)
      {
LABEL_29:
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v20 = *(this + 31);
        v17 = buf.__r_.__value_.__l.__size_;
        v99 = *&buf.__r_.__value_.__l.__data_;
        if (!buf.__r_.__value_.__l.__size_)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v23 = *(this + 31);
    *&v99 = v18;
    *(&v99 + 1) = v17;
LABEL_38:
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
LABEL_39:
    antenna::CommandDriver::registerHandler();
    v24 = *(&v99 + 1);
    if (*(&v99 + 1) && !atomic_fetch_add((*(&v99 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    v25 = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }
  }

  v26 = operator new(8uLL);
  *v26 = 0x3000200010000;
  v27 = v26 + 1;
  v28 = *(this + 38);
  if (v28)
  {
    *(this + 39) = v28;
    operator delete(v28);
    *(this + 38) = 0;
    *(this + 39) = 0;
    *(this + 40) = 0;
  }

  *(this + 38) = v26;
  *(this + 39) = v27;
  *(this + 40) = v27;
  memset(&buf, 170, sizeof(buf));
  config::hw::getBootArgs(&buf);
  ctu::split_any();
  v30 = *(&v97 + 1);
  v29 = v97;
  if (v97 != *(&v97 + 1))
  {
    v31 = *MEMORY[0x29EDC91C0];
    v95 = *MEMORY[0x29EDC91C0];
    while (1)
    {
      v96 = *v29;
      if (v29[1] >= 0x13)
      {
        break;
      }

      if (*(&v96 + 1) >= 0x11uLL)
      {
        v33 = *v29;
LABEL_62:
        v36 = *v33;
        v37 = v33[1];
        v38 = *(v33 + 16);
        if (v36 == 0x696D70732D726173 && v37 == 0x6D756465726F632DLL && v38 == 112)
        {
          *(this + 328) = 1;
        }
      }

LABEL_51:
      v29 += 2;
      if (v29 == v30)
      {
        v29 = v97;
        goto LABEL_156;
      }
    }

    v33 = *v29;
    if (*v96 == 0x7272652D72617368 && *(v96 + 8) == 0x76616865622D726FLL && *(v96 + 11) == 0x726F697661686562)
    {
      *(this + 39) = *(this + 38);
      v41 = ctu::llvm::StringRef::find();
      if (v41 == v31)
      {
        goto LABEL_85;
      }

      v42 = *(&v96 + 1);
      if ((v41 + 1) < *(&v96 + 1))
      {
        v43 = v41 + 1;
      }

      else
      {
        v43 = *(&v96 + 1);
      }

      if (v43 <= v31)
      {
        v44 = v31;
      }

      else
      {
        v44 = v43;
      }

      if (v44 < *(&v96 + 1))
      {
        v42 = v44;
      }

      if (!v96)
      {
LABEL_85:
        memset(&__dst, 0, sizeof(__dst));
        goto LABEL_92;
      }

      v45 = v42 - v43;
      if (v42 - v43 >= 0x7FFFFFFFFFFFFFF8)
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

        p_dst = operator new(v47);
        __dst.__r_.__value_.__l.__size_ = v45;
        __dst.__r_.__value_.__r.__words[2] = v47 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v42 - v43;
        p_dst = &__dst;
        if (v42 == v43)
        {
LABEL_91:
          p_dst->__r_.__value_.__s.__data_[v45] = 0;
LABEL_92:
          v48 = std::stoi(&__dst, 0, 16);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
            v49 = *(this + 13);
            if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_106;
            }

LABEL_94:
            LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
            *(__dst.__r_.__value_.__r.__words + 4) = "hsar-error-behavior";
            WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
            *(&__dst.__r_.__value_.__r.__words[1] + 6) = v48;
            _os_log_impl(&dword_297288000, v49, OS_LOG_TYPE_DEFAULT, "#I Found %s = 0x%x", &__dst, 0x12u);
            v50 = v48 & 3;
            v52 = *(this + 39);
            v51 = *(this + 40);
            if (v52 >= v51)
            {
              goto LABEL_95;
            }

LABEL_107:
            *v52 = v50 << 8;
            v60 = v52 + 2;
          }

          else
          {
            v49 = *(this + 13);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_94;
            }

LABEL_106:
            v50 = v48 & 3;
            v52 = *(this + 39);
            v51 = *(this + 40);
            if (v52 < v51)
            {
              goto LABEL_107;
            }

LABEL_95:
            v53 = *(this + 38);
            v54 = v52 - v53;
            v55 = (v52 - v53) >> 1;
            if (v55 <= -2)
            {
              goto LABEL_161;
            }

            v56 = v51 - v53;
            if (v56 <= v55 + 1)
            {
              v57 = v55 + 1;
            }

            else
            {
              v57 = v56;
            }

            if (v56 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v58 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v57;
            }

            if (v58)
            {
              if (v58 < 0)
              {
                goto LABEL_162;
              }

              v59 = operator new(2 * v58);
            }

            else
            {
              v59 = 0;
            }

            v61 = &v59[2 * v55];
            *v61 = v50 << 8;
            v60 = v61 + 2;
            memcpy(v59, v53, v54);
            *(this + 38) = v59;
            *(this + 39) = v60;
            *(this + 40) = &v59[2 * v58];
            if (v53)
            {
              operator delete(v53);
            }
          }

          *(this + 39) = v60;
          v62 = (v48 >> 2) & 3;
          v63 = *(this + 40);
          if (v60 >= v63)
          {
            v65 = *(this + 38);
            v66 = v60 - v65;
            v67 = (v60 - v65) >> 1;
            if (v67 < -1)
            {
              goto LABEL_161;
            }

            v68 = v63 - v65;
            if (v68 <= v67 + 1)
            {
              v69 = v67 + 1;
            }

            else
            {
              v69 = v68;
            }

            if (v68 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v70 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v70 = v69;
            }

            if (v70)
            {
              if (v70 < 0)
              {
                goto LABEL_162;
              }

              v71 = operator new(2 * v70);
            }

            else
            {
              v71 = 0;
            }

            v72 = &v71[2 * v67];
            *v72 = (v62 << 8) | 1;
            v64 = v72 + 2;
            memcpy(v71, v65, v66);
            *(this + 38) = v71;
            *(this + 39) = v64;
            *(this + 40) = &v71[2 * v70];
            if (v65)
            {
              operator delete(v65);
            }
          }

          else
          {
            *v60 = (v62 << 8) | 1;
            v64 = v60 + 2;
          }

          *(this + 39) = v64;
          v73 = (v48 >> 4) & 3;
          v74 = *(this + 40);
          if (v64 >= v74)
          {
            v76 = *(this + 38);
            v77 = v64 - v76;
            v78 = (v64 - v76) >> 1;
            if (v78 < -1)
            {
              goto LABEL_161;
            }

            v79 = v74 - v76;
            if (v79 <= v78 + 1)
            {
              v80 = v78 + 1;
            }

            else
            {
              v80 = v79;
            }

            if (v79 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v81 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v81 = v80;
            }

            if (v81)
            {
              if (v81 < 0)
              {
                goto LABEL_162;
              }

              v82 = operator new(2 * v81);
            }

            else
            {
              v82 = 0;
            }

            v83 = &v82[2 * v78];
            *v83 = (v73 << 8) | 2;
            v75 = v83 + 2;
            memcpy(v82, v76, v77);
            *(this + 38) = v82;
            *(this + 39) = v75;
            *(this + 40) = &v82[2 * v81];
            if (v76)
            {
              operator delete(v76);
            }
          }

          else
          {
            *v64 = (v73 << 8) | 2;
            v75 = v64 + 2;
          }

          *(this + 39) = v75;
          v84 = v48 >> 6;
          v85 = *(this + 40);
          if (v75 < v85)
          {
            *v75 = (v84 << 8) | 3;
            v32 = v75 + 2;
          }

          else
          {
            v86 = *(this + 38);
            v87 = v75 - v86;
            v88 = (v75 - v86) >> 1;
            if (v88 < -1)
            {
LABEL_161:
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v89 = v85 - v86;
            if (v89 <= v88 + 1)
            {
              v90 = v88 + 1;
            }

            else
            {
              v90 = v89;
            }

            if (v89 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v91 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v91 = v90;
            }

            if (v91)
            {
              if (v91 < 0)
              {
LABEL_162:
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v92 = operator new(2 * v91);
            }

            else
            {
              v92 = 0;
            }

            v93 = &v92[2 * v88];
            *v93 = (v84 << 8) | 3;
            v32 = v93 + 2;
            memcpy(v92, v86, v87);
            *(this + 38) = v92;
            *(this + 39) = v32;
            *(this + 40) = &v92[2 * v91];
            if (v86)
            {
              operator delete(v86);
            }
          }

          v31 = v95;
          *(this + 39) = v32;
          goto LABEL_51;
        }
      }

      memmove(p_dst, (v96 + v43), v45);
      goto LABEL_91;
    }

    goto LABEL_62;
  }

LABEL_156:
  if (v29)
  {
    *(&v97 + 1) = v29;
    operator delete(v29);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_160:
  v94 = *MEMORY[0x29EDCA608];
}

void sub_2973960B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2973960D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2973960E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, dispatch_object_t object)
{
  if (__p)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

  operator delete(a19);
  goto LABEL_7;
}

uint64_t SARModule::SARModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
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
    *a1 = &unk_2A1E34AE8;
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
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E3BAB8;
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("sar.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 104), "com.apple.telephony.abm", "sar.mod");
  *a1 = &unk_2A1E3BAB8;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 514;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 134) = 0;
  *(a1 + 138) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 313) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 329) = 1;
  *(a1 + 330) = 0;
  *(a1 + 338) = 0;
  *(a1 + 346) = 0;
  *(a1 + 348) = 1;
  return a1;
}

void sub_2973963A4(_Unwind_Exception *a1)
{
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void SARModule::~SARModule(SARModule *this)
{
  *this = &unk_2A1E3BAB8;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v21, 2u);
  }

  v4 = *(this + 38);
  if (v4)
  {
    *(this + 39) = v4;
    operator delete(v4);
  }

  v5 = *(this + 37);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 32);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 28);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 25);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 23);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 21);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 19);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 15);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  MEMORY[0x29C26DE80](v2);
  v13 = *(this + 12);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(this + 11);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 10);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v16 = *(this + 3);
  if (v16)
  {
    v17 = *(this + 4);
    v18 = *(this + 3);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *(this + 3);
    }

    *(this + 4) = v16;
    operator delete(v18);
  }

  v20 = *(this + 2);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }
}

{
  SARModule::~SARModule(this);

  operator delete(v1);
}

void SARModule::shutdownWithStage(void *a1, uint64_t a2, dispatch_object_t *a3)
{
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
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

_WORD *SARModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *SARModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void SARModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_18:
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

  v16 = v15;
  v17 = operator new(0x10uLL);
  *v17 = a1;
  v17[1] = v12;
  v18 = a1[11];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v20 = a1[10];
  if (!v20 || (v21 = a1[9], (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v22;
  v23 = operator new(8uLL);
  *v23 = a1;
  v24 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v23;
  v25[1] = v21;
  v25[2] = v8;
  dispatch_async_f(v24, v25, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }
}

void SARModule::registerCommandHandlers_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_88:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_88;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_88;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEAB0];
  v8 = strlen(*MEMORY[0x29EDBEAB0]);
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
    v57 = v9;
    v58 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v58) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  aBlock[4] = this;
  aBlock[5] = v4;
  v54 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v55 = v12;
  Service::registerCommandHandler(this, &__dst, &v55);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBE730];
  v14 = strlen(*MEMORY[0x29EDBE730]);
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
    v57 = v15;
    v58 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v58) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v51[0] = MEMORY[0x29EDCA5F8];
  v51[1] = 3221225472;
  v51[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_8;
  v51[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v51[4] = this;
  v18 = _Block_copy(v51);
  v52 = v18;
  Service::registerCommandHandler(this, &__dst, &v52);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBEFD8];
  v20 = strlen(*MEMORY[0x29EDBEFD8]);
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
    v57 = v21;
    v58 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v58) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 3221225472;
  v49[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_2;
  v49[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v49[4] = this;
  v24 = _Block_copy(v49);
  v50 = v24;
  Service::registerCommandHandler(this, &__dst, &v50);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBEE78];
  v26 = strlen(*MEMORY[0x29EDBEE78]);
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
    v57 = v27;
    v58 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v58) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 3221225472;
  v47[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_3;
  v47[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v47[4] = this;
  v30 = _Block_copy(v47);
  v48 = v30;
  Service::registerCommandHandler(this, &__dst, &v48);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v31 = *MEMORY[0x29EDBF130];
  v32 = strlen(*MEMORY[0x29EDBF130]);
  if (v32 > 0x7FFFFFFFFFFFFFF7)
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
    v57 = v33;
    v58 = v35 | 0x8000000000000000;
    __dst = v34;
    goto LABEL_66;
  }

  HIBYTE(v58) = v32;
  v34 = &__dst;
  if (v32)
  {
LABEL_66:
    memmove(v34, v31, v33);
  }

  *(v34 + v33) = 0;
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v45[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_4;
  v45[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v45[4] = this;
  v36 = _Block_copy(v45);
  v46 = v36;
  Service::registerCommandHandler(this, &__dst, &v46);
  if (v36)
  {
    _Block_release(v36);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v37 = *MEMORY[0x29EDBF118];
  v38 = strlen(*MEMORY[0x29EDBF118]);
  if (v38 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v39 = v38;
  if (v38 >= 0x17)
  {
    if ((v38 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v38 | 7) + 1;
    }

    v40 = operator new(v41);
    v57 = v39;
    v58 = v41 | 0x8000000000000000;
    __dst = v40;
    goto LABEL_79;
  }

  HIBYTE(v58) = v38;
  v40 = &__dst;
  if (v38)
  {
LABEL_79:
    memmove(v40, v37, v39);
  }

  *(v40 + v39) = 0;
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_5;
  v43[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v43[4] = this;
  v42 = _Block_copy(v43);
  v44 = v42;
  Service::registerCommandHandler(this, &__dst, &v44);
  if (v42)
  {
    _Block_release(v42);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29739726C(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(v3 - 105) < 0)
  {
    operator delete(*(v3 - 128));
  }

  v5 = *(v3 - 144);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v1);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke(void *a1, void *a2, const void **a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_31;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  v11 = v7[13];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x29C26F920](*a2);
    memset(__dst, 170, sizeof(__dst));
    v13 = strlen(v12);
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      if ((v13 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v13 | 7) + 1;
      }

      v15 = operator new(v16);
      __dst[1] = v14;
      __dst[2] = (v16 | 0x8000000000000000);
      __dst[0] = v15;
    }

    else
    {
      HIBYTE(__dst[2]) = v13;
      v15 = __dst;
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    memcpy(v15, v12, v14);
LABEL_17:
    *(v14 + v15) = 0;
    free(v12);
    v17 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v17 = __dst[0];
    }

    *buf = 136315138;
    v32 = v17;
    _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Received set audio state command with dict: %s", buf, 0xCu);
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  v18 = *a2;
  if (v18)
  {
    xpc_retain(v18);
    v19 = *a3;
    if (*a3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = xpc_null_create();
    v19 = *a3;
    if (*a3)
    {
LABEL_23:
      v20 = _Block_copy(v19);
      v21 = v7[10];
      if (!v21)
      {
LABEL_32:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_27;
    }
  }

  v20 = 0;
  v21 = v7[10];
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_27:
  v22 = v7[9];
  v23 = std::__shared_weak_count::lock(v21);
  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = v23;
  v25 = operator new(0x18uLL);
  *v25 = v7;
  v25[1] = v18;
  v26 = xpc_null_create();
  v25[2] = v20;
  v27 = v7[11];
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  v28 = operator new(0x18uLL);
  *v28 = v25;
  v28[1] = v22;
  v28[2] = v24;
  dispatch_async_f(v27, v28, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  xpc_release(v26);
LABEL_31:
  v29 = *MEMORY[0x29EDCA608];
}

void sub_29739765C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_8(uint64_t a1, xpc_object_t *a2, const void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = v4[10];
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v5 = xpc_null_create();
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = _Block_copy(v6);
  v8 = v4[10];
  if (!v8)
  {
LABEL_11:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_7:
  v9 = v4[9];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = operator new(0x18uLL);
  *v12 = v4;
  v12[1] = v5;
  v13 = xpc_null_create();
  v12[2] = v7;
  v14 = v4[11];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v12;
  v15[1] = v9;
  v15[2] = v11;
  dispatch_async_f(v14, v15, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(v13);
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1, xpc_object_t *a2, const void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = v4[10];
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v5 = xpc_null_create();
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = _Block_copy(v6);
  v8 = v4[10];
  if (!v8)
  {
LABEL_11:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_7:
  v9 = v4[9];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = operator new(0x18uLL);
  *v12 = v4;
  v12[1] = v5;
  v13 = xpc_null_create();
  v12[2] = v7;
  v14 = v4[11];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v12;
  v15[1] = v9;
  v15[2] = v11;
  dispatch_async_f(v14, v15, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(v13);
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_3(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a1 + 32);
  if (*a3)
  {
    v4 = _Block_copy(*a3);
    v5 = v3[10];
    if (!v5)
    {
LABEL_10:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v4 = 0;
    v5 = v3[10];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v6 = v3[9];
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = operator new(0x10uLL);
  *v9 = v3;
  v9[1] = v4;
  v10 = v3[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_4(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a1 + 32);
  if (*a3)
  {
    v4 = _Block_copy(*a3);
    v5 = v3[10];
    if (!v5)
    {
LABEL_10:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v4 = 0;
    v5 = v3[10];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v6 = v3[9];
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = operator new(0x10uLL);
  *v9 = v3;
  v9[1] = v4;
  v10 = v3[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb3_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_5(uint64_t a1, xpc_object_t *a2, const void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = v4[10];
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v5 = xpc_null_create();
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = _Block_copy(v6);
  v8 = v4[10];
  if (!v8)
  {
LABEL_11:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_7:
  v9 = v4[9];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = operator new(0x18uLL);
  *v12 = v4;
  v12[1] = v5;
  v13 = xpc_null_create();
  v12[2] = v7;
  v14 = v4[11];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v12;
  v15[1] = v9;
  v15[2] = v11;
  dispatch_async_f(v14, v15, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb4_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(v13);
}

void SARModule::registerEventHandlers_sync(SARModule *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_53:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_53;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBF460];
  v8 = strlen(*MEMORY[0x29EDBF460]);
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

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v27 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v27) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E3BEA8;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v33 = v12;
  Service::registerEventHandler(this, &__p, v32);
  if (v33 == v32)
  {
    (*(*v33 + 32))(v33);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

  if (v33)
  {
    (*(*v33 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
LABEL_47:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBEFF0];
  v14 = strlen(*MEMORY[0x29EDBEFF0]);
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
    *(&__p + 1) = v15;
    v27 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v27) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E3BF58;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v31 = v18;
  Service::registerEventHandler(this, &__p, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  if (v31)
  {
    (*(*v31 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
LABEL_49:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBE618];
  v20 = strlen(*MEMORY[0x29EDBE618]);
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
    *(&__p + 1) = v21;
    v27 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v27) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v29 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E3BFD8;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v29 = v24;
  Service::registerEventHandler(this, &__p, v28);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_51:
    operator delete(__p);
    goto LABEL_45;
  }

  if (v29)
  {
    (*(*v29 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_51;
  }

LABEL_45:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v25 = *MEMORY[0x29EDCA608];
}

void SARModule::initializeHelpers_sync(dispatch_object_t *this)
{
  v121[1] = *MEMORY[0x29EDCA608];
  capabilities::abs::supportedSARFeatures(this);
  v2 = capabilities::abs::operator&();
  if (!v2)
  {
    goto LABEL_54;
  }

  v3 = this[13];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting HSAR Config from kernel", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v6;
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

    v5 = off_2A1399A30;
  }

  v9 = *(&off_2A1399A30 + 1);
  v117 = v5;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v5 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v5, 25, buf, 1, this + 329, 20, v121, &v119, this + 329, 0x14uLL);
    if (!v9)
    {
LABEL_19:
      v11 = this[13];
      if (v10)
      {
        goto LABEL_20;
      }

LABEL_27:
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "Failed to get HSAR configuration!", buf, 2u);
        v13 = this[13];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

LABEL_29:
        *buf = 0;
        _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I Getting call state", buf, 2u);
        goto LABEL_30;
      }

LABEL_28:
      v13 = this[13];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      goto LABEL_29;
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

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  v14 = v10;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v11 = this[13];
  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_28;
  }

  if (*(this + 329))
  {
    v12 = "Enabled";
  }

  else
  {
    v12 = "Disabled";
  }

  *buf = 136315138;
  *&buf[4] = v12;
  _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting HSAR Configuration: HSAR is %s", buf, 0xCu);
  v13 = this[13];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_29;
  }

LABEL_30:
  v15 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v16 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v15);
    v17 = *buf;
    memset(buf, 0, sizeof(buf));
    v18 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v17;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v19 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    v16 = off_2A1399A30;
  }

  v20 = *(&off_2A1399A30 + 1);
  v117 = v16;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v16 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v21 = AppleSARHelper::callUserClientMethod(v16, 35, buf, 1, this + 35, 1, v121, &v119, this + 35, 1uLL);
    if (!v20)
    {
LABEL_45:
      v22 = this[13];
      if (v21)
      {
        goto LABEL_46;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v21 = 0;
    if (!v20)
    {
      goto LABEL_45;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_45;
  }

  v24 = v21;
  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v22 = this[13];
  if (v24)
  {
LABEL_46:
    v2 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (*(this + 280))
      {
        v23 = "On";
      }

      else
      {
        v23 = "Off";
      }

      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_impl(&dword_297288000, v22, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting call state: %s", buf, 0xCu);
    }

    goto LABEL_54;
  }

LABEL_52:
  v2 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v22, OS_LOG_TYPE_ERROR, "Failed to get call state!", buf, 2u);
  }

LABEL_54:
  capabilities::abs::supportedSARFeatures(v2);
  if (!capabilities::abs::operator&())
  {
    goto LABEL_183;
  }

  v25 = this[13];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v25, OS_LOG_TYPE_DEFAULT, "#I Getting SAR Fusion Status from kernel", buf, 2u);
  }

  v26 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v27 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v26);
    v28 = *buf;
    memset(buf, 0, sizeof(buf));
    v29 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    v27 = off_2A1399A30;
  }

  v31 = *(&off_2A1399A30 + 1);
  v117 = v27;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v27 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v32 = AppleSARHelper::callUserClientMethod(v27, 3, buf, 1, this + 16, 4, v121, &v119, this + 16, 4uLL);
    if (!v31)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v32 = 0;
    if (!v31)
    {
      goto LABEL_72;
    }
  }

  if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v105 = v32;
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    if (v105)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

LABEL_72:
  if (v32)
  {
    goto LABEL_75;
  }

LABEL_73:
  v33 = this[13];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v33, OS_LOG_TYPE_ERROR, "Failed to get Accessory State!", buf, 2u);
  }

LABEL_75:
  v34 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v35 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v34);
    v36 = *buf;
    memset(buf, 0, sizeof(buf));
    v37 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v36;
    if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    v38 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }

    v35 = off_2A1399A30;
  }

  v39 = *(&off_2A1399A30 + 1);
  v117 = v35;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v35 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v40 = AppleSARHelper::callUserClientMethod(v35, 4, buf, 1, this + 132, 1, v121, &v119, this + 132, 1uLL);
    if (!v39)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v40 = 0;
    if (!v39)
    {
      goto LABEL_90;
    }
  }

  if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v106 = v40;
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
    if (v106)
    {
      goto LABEL_93;
    }

    goto LABEL_91;
  }

LABEL_90:
  if (v40)
  {
    goto LABEL_93;
  }

LABEL_91:
  v41 = this[13];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v41, OS_LOG_TYPE_ERROR, "Failed to get OBD and Tuner State!", buf, 2u);
  }

LABEL_93:
  *(this + 133) = *(this + 132);
  v42 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v43 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v42);
    v44 = *buf;
    memset(buf, 0, sizeof(buf));
    v45 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v44;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    v46 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }

    v43 = off_2A1399A30;
  }

  v47 = *(&off_2A1399A30 + 1);
  v117 = v43;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v43 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v48 = AppleSARHelper::callUserClientMethod(v43, 6, buf, 1, this + 134, 1, v121, &v119, this + 134, 1uLL);
    if (!v47)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v48 = 0;
    if (!v47)
    {
      goto LABEL_108;
    }
  }

  if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v107 = v48;
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
    if (v107)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

LABEL_108:
  if (v48)
  {
    goto LABEL_111;
  }

LABEL_109:
  v49 = this[13];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v49, OS_LOG_TYPE_ERROR, "Failed to get Voice state!", buf, 2u);
  }

LABEL_111:
  v50 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v51 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v50);
    v52 = *buf;
    memset(buf, 0, sizeof(buf));
    v53 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v52;
    if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v53->__on_zero_shared)(v53);
      std::__shared_weak_count::__release_weak(v53);
    }

    v54 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }

    v51 = off_2A1399A30;
  }

  v55 = *(&off_2A1399A30 + 1);
  v117 = v51;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v51 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v56 = AppleSARHelper::callUserClientMethod(v51, 8, buf, 1, this + 135, 1, v121, &v119, this + 135, 1uLL);
    if (!v55)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v56 = 0;
    if (!v55)
    {
      goto LABEL_126;
    }
  }

  if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v108 = v56;
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
    if (v108)
    {
      goto LABEL_129;
    }

    goto LABEL_127;
  }

LABEL_126:
  if (v56)
  {
    goto LABEL_129;
  }

LABEL_127:
  v57 = this[13];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v57, OS_LOG_TYPE_ERROR, "Failed to get Speaker State!", buf, 2u);
  }

LABEL_129:
  v58 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v59 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v58);
    v60 = *buf;
    memset(buf, 0, sizeof(buf));
    v61 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v60;
    if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v61->__on_zero_shared)(v61);
      std::__shared_weak_count::__release_weak(v61);
    }

    v62 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v62->__on_zero_shared)(v62);
      std::__shared_weak_count::__release_weak(v62);
    }

    v59 = off_2A1399A30;
  }

  v63 = *(&off_2A1399A30 + 1);
  v117 = v59;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v59 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v64 = AppleSARHelper::callUserClientMethod(v59, 9, buf, 1, this + 17, 1, v121, &v119, this + 17, 1uLL);
    if (!v63)
    {
      goto LABEL_144;
    }
  }

  else
  {
    v64 = 0;
    if (!v63)
    {
      goto LABEL_144;
    }
  }

  if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v109 = v64;
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
    if (v109)
    {
      goto LABEL_147;
    }

    goto LABEL_145;
  }

LABEL_144:
  if (v64)
  {
    goto LABEL_147;
  }

LABEL_145:
  v65 = this[13];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v65, OS_LOG_TYPE_ERROR, "Failed to get Grip State!", buf, 2u);
  }

LABEL_147:
  *(this + 137) = *(this + 136);
  v66 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v67 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v66);
    v68 = *buf;
    memset(buf, 0, sizeof(buf));
    v69 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v68;
    if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v69->__on_zero_shared)(v69);
      std::__shared_weak_count::__release_weak(v69);
    }

    v70 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v70->__on_zero_shared)(v70);
      std::__shared_weak_count::__release_weak(v70);
    }

    v67 = off_2A1399A30;
  }

  v71 = *(&off_2A1399A30 + 1);
  v117 = v67;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v67 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v72 = AppleSARHelper::callUserClientMethod(v67, 10, buf, 1, this + 138, 1, v121, &v119, this + 138, 1uLL);
    if (!v71)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v72 = 0;
    if (!v71)
    {
      goto LABEL_162;
    }
  }

  if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v110 = v72;
    (v71->__on_zero_shared)(v71);
    std::__shared_weak_count::__release_weak(v71);
    if (v110)
    {
      goto LABEL_165;
    }

    goto LABEL_163;
  }

LABEL_162:
  if (v72)
  {
    goto LABEL_165;
  }

LABEL_163:
  v73 = this[13];
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v73, OS_LOG_TYPE_ERROR, "Failed to get Power State!", buf, 2u);
  }

LABEL_165:
  v74 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v75 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v74);
    v76 = *buf;
    memset(buf, 0, sizeof(buf));
    v77 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v76;
    if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v77->__on_zero_shared)(v77);
      std::__shared_weak_count::__release_weak(v77);
    }

    v78 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v78);
    }

    v75 = off_2A1399A30;
  }

  v79 = *(&off_2A1399A30 + 1);
  v117 = v75;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v75 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v80 = AppleSARHelper::callUserClientMethod(v75, 11, buf, 1, this + 139, 1, v121, &v119, this + 139, 1uLL);
    if (!v79)
    {
      goto LABEL_180;
    }
  }

  else
  {
    v80 = 0;
    if (!v79)
    {
      goto LABEL_180;
    }
  }

  if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v111 = v80;
    (v79->__on_zero_shared)(v79);
    std::__shared_weak_count::__release_weak(v79);
    if (v111)
    {
      goto LABEL_183;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (v80)
  {
    goto LABEL_183;
  }

LABEL_181:
  v81 = this[13];
  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v81, OS_LOG_TYPE_ERROR, "Failed to get Wrist State!", buf, 2u);
  }

LABEL_183:
  v82 = this[13];
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v82, OS_LOG_TYPE_DEFAULT, "#I Set up SAR Helpers", buf, 2u);
  }

  SARModule::initializeSARLimitTable_sync(this);
  v84 = this[11];
  object = v84;
  if (v84)
  {
    dispatch_retain(v84);
  }

  CMOnBodyDelegate::create(&object, v83, buf);
  v85 = *buf;
  memset(buf, 0, sizeof(buf));
  v86 = this[15];
  *(this + 7) = v85;
  if (v86 && !atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v86->__on_zero_shared)(v86);
    std::__shared_weak_count::__release_weak(v86);
  }

  v87 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v87->__on_zero_shared)(v87);
    std::__shared_weak_count::__release_weak(v87);
  }

  v88 = object;
  if (object)
  {
    dispatch_release(object);
  }

  if (!this[14])
  {
    v89 = this[13];
    v88 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
    if (v88)
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v89, OS_LOG_TYPE_ERROR, "Failed to create core motion on-body manager", buf, 2u);
    }
  }

  capabilities::abs::supportedSARFeatures(v88);
  if (capabilities::abs::operator&())
  {
    SARModule::initializeVoIPCallDetection_sync(this);
  }

  SARModule::initializeAudio_sync(this);
  if (CMHandDetectionDelegate::isSupported(v90))
  {
    SARModule::initializeHandDetection_sync(this);
  }

  SARModule::initializeOBD_sync(this);
  SARModule::initializeAccessory_sync(this);
  SARModule::initializePowerSource_sync(this);
  v91 = this[10];
  if (!v91 || (v92 = this[9], (v93 = std::__shared_weak_count::lock(v91)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v94 = v93;
  atomic_fetch_add_explicit(&v93->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v93->__on_zero_shared)(v93);
    std::__shared_weak_count::__release_weak(v94);
  }

  v95 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v96 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v95);
    v97 = *buf;
    memset(buf, 0, sizeof(buf));
    v98 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v97;
    if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v98->__on_zero_shared)(v98);
      std::__shared_weak_count::__release_weak(v98);
    }

    v99 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v99->__on_zero_shared)(v99);
      std::__shared_weak_count::__release_weak(v99);
    }

    v96 = off_2A1399A30;
  }

  v100 = *(&off_2A1399A30 + 1);
  v117 = v96;
  v118 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN9SARModule22initializeHelpers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e12_v20__0i8_v12l;
  aBlock[4] = this;
  aBlock[5] = v92;
  v113 = v94;
  atomic_fetch_add_explicit(&v94->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v101 = _Block_copy(aBlock);
  v102 = this[11];
  if (v102)
  {
    dispatch_retain(this[11]);
  }

  v114 = v101;
  v115 = v102;
  AppleSARHelper::registerSARServiceCallback();
  if (v115)
  {
    dispatch_release(v115);
  }

  if (v114)
  {
    _Block_release(v114);
  }

  if (!v100 || atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v103 = this[13];
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_226;
    }

    goto LABEL_225;
  }

  (v100->__on_zero_shared)(v100);
  std::__shared_weak_count::__release_weak(v100);
  v103 = this[13];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
LABEL_225:
    *buf = 0;
    _os_log_impl(&dword_297288000, v103, OS_LOG_TYPE_DEFAULT, "#I Finished Initialization", buf, 2u);
  }

LABEL_226:
  if (v113)
  {
    std::__shared_weak_count::__release_weak(v113);
  }

  std::__shared_weak_count::__release_weak(v94);
  v104 = *MEMORY[0x29EDCA608];
}

void SARModule::initializeSARLimitTable_sync(SARModule *this)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v2 = capabilities::abs::supportedHSARType(this);
  if (v2 >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *(this + 348) = v3;
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = sar::toString();
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I SAR Limit Table Type: %s", buf, 0xCu);
  }

  v5 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v6 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v5);
    v7 = *buf;
    memset(buf, 0, sizeof(buf));
    v8 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_2A1399A30;
  }

  v10 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  *buf = *(this + 329);
  v17 = *(this + 345);
  if (*(v6 + 1))
  {
    v18 = 0;
    v19[0] = 0;
    v15 = 1;
    v11 = AppleSARHelper::callUserClientMethod(v6, 25, v19, 1, buf, 20, &v18, &v15, buf, 0x14uLL);
    if (!v10)
    {
LABEL_21:
      if (v11)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

  v14 = v11;
  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (v14)
  {
    goto LABEL_24;
  }

LABEL_22:
  v12 = *(this + 13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "Failed to set SAR Limit Table!", buf, 2u);
  }

LABEL_24:
  v13 = *MEMORY[0x29EDCA608];
}

void SARModule::initializeVoIPCallDetection_sync(SARModule *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing FT Call Detection", buf, 2u);
  }

  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
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

  v7 = *(this + 11);
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3321888768;
  v13[2] = ___ZN9SARModule32initializeVoIPCallDetection_syncEv_block_invoke;
  v13[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e15_v24__0B8B12r_16l;
  v13[4] = this;
  v13[5] = v4;
  v14 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v19 = 0;
  v17 = &unk_2A1E3C058;
  v18 = _Block_copy(v13);
  v19 = &v17;
  capabilities::abs::supportedSARFeatures(v18);
  if (capabilities::abs::operator&())
  {
    v8 = operator new(0x28uLL);
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *v8 = &unk_2A1E36868;
    std::construct_at[abi:ne200100]<VoIPCallDelegate,dispatch::queue &,std::function<void ()(BOOL,BOOL,char const*)> &,VoIPCallDelegate*>(v8 + 3, &object, &v17);
    v9 = *(this + 37);
    *(this + 36) = v8 + 24;
    *(this + 37) = v8;
    if (!v9)
    {
LABEL_14:
      v10 = v19;
      if (v19 != &v17)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v9 = *(this + 37);
    *(this + 36) = 0;
    *(this + 37) = 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v10 = v19;
  if (v19 != &v17)
  {
LABEL_15:
    if (v10)
    {
      (*(*v10 + 5))(v10);
    }

    v11 = object;
    if (object)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_23:
  (*(*v10 + 4))(v10);
  v11 = object;
  if (object)
  {
LABEL_18:
    dispatch_release(v11);
  }

LABEL_19:
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v6);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_29739A124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, dispatch_object_t object, uint64_t a17, char a18)
{
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  std::function<void ()(BOOL,BOOL,char const*)>::~function(&a18);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v22 = object;
    if (!object)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v18);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = object;
    if (!object)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v22);
  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void SARModule::initializeAudio_sync(SARModule *this)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing Audio", buf, 2u);
  }

  v3 = (*(*this + 16))(this);
  AudioManager::create(v3, buf);
  v5 = *buf;
  memset(buf, 0, sizeof(buf));
  v6 = *(this + 19);
  *(this + 9) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *&buf[8];
  if (!*&buf[8] || atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 18))
    {
      goto LABEL_9;
    }

LABEL_32:
    v21 = *(this + 13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to create Audio Manager", buf, 2u);
      v24 = *MEMORY[0x29EDCA608];
      return;
    }

LABEL_33:
    v22 = *MEMORY[0x29EDCA608];
    return;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!*(this + 18))
  {
    goto LABEL_32;
  }

LABEL_9:
  if (!capabilities::radio::dal(v4))
  {
    goto LABEL_33;
  }

  v8 = *(this + 10);
  if (!v8 || (v9 = *(this + 9), (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  p_shared_weak_owners = &v10->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v13 = *(this + 18);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN9SARModule20initializeAudio_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e8_v12__0B8l;
  aBlock[4] = this;
  aBlock[5] = v9;
  v26 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v14 = _Block_copy(aBlock);
  v15 = *(this + 11);
  if (v15)
  {
    dispatch_retain(*(this + 11));
  }

  v27 = v14;
  v28 = v15;
  v16 = v13[13];
  if (v16 >= v13[14])
  {
    v23 = std::vector<dispatch::callback<void({block_pointer})(BOOL)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(BOOL)> const&>(v13 + 12, &v27);
    v15 = v28;
    v13[13] = v23;
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v14)
  {
    *v16 = _Block_copy(v14);
    v16[1] = v15;
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v16 = 0;
  v16[1] = v15;
  if (v15)
  {
LABEL_19:
    dispatch_retain(v15);
  }

LABEL_20:
  v13[13] = (v16 + 2);
  if (v15)
  {
LABEL_21:
    dispatch_release(v15);
  }

LABEL_22:
  if (v27)
  {
    _Block_release(v27);
  }

  v17 = *(*(this + 18) + 56);
  *(this + 135) = v17 == 2;
  v18 = *(this + 13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = "OFF";
    if (v17 == 2)
    {
      v19 = "ON";
    }

    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, "#I Sending speaker state to driver: %s", buf, 0xCu);
  }

  SARModule::sendSpeakerState_sync(this);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v11);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_29739A56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SARModule::initializeHandDetection_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing Hand Detection", buf, 2u);
  }

  v3 = (*(*this + 16))(this);
  v4 = *(this + 11);
  v36 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(this + 12);
  v35 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(this + 19);
  v33 = *(this + 18);
  v34 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = 0;
  v32 = 0;
  v7 = *(this + 15);
  v29 = *(this + 14);
  v30 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HandDetectionManager::create(v3, &v36, &v35, &v33, &v31, &v29, buf);
  v8 = *buf;
  memset(buf, 0, sizeof(buf));
  v9 = *(this + 28);
  *(this + 216) = v8;
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

  v11 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v35)
  {
    dispatch_release(v35);
  }

  if (v36)
  {
    dispatch_release(v36);
  }

  if (*(this + 27))
  {
    v14 = *(this + 10);
    if (!v14 || (v15 = *(this + 9), (v16 = std::__shared_weak_count::lock(v14)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v17 = v16;
    p_shared_weak_owners = &v16->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v17);
    }

    v19 = *(this + 27);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN9SARModule28initializeHandDetection_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e8_v12__0i8l;
    aBlock[4] = this;
    aBlock[5] = v15;
    v26 = v17;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v20 = _Block_copy(aBlock);
    v21 = *(this + 11);
    if (v21)
    {
      dispatch_retain(v21);
    }

    v27 = v20;
    v28 = v21;
    v22 = v19[4];
    if (v22 >= v19[5])
    {
      v24 = std::vector<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)> const&>(v19 + 3, &v27);
      v21 = v28;
      v19[4] = v24;
      if (!v21)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v20)
    {
      *v22 = _Block_copy(v20);
      v22[1] = v21;
      if (!v21)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v22 = 0;
      v22[1] = v21;
      if (!v21)
      {
LABEL_41:
        v19[4] = (v22 + 2);
        if (!v21)
        {
LABEL_43:
          if (v27)
          {
            _Block_release(v27);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_weak(v26);
          }

          std::__shared_weak_count::__release_weak(v17);
          return;
        }

LABEL_42:
        dispatch_release(v21);
        goto LABEL_43;
      }
    }

    dispatch_retain(v21);
    goto LABEL_41;
  }

  v23 = *(this + 13);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v23, OS_LOG_TYPE_ERROR, "Failed to create hand detection manager!", buf, 2u);
  }
}

void sub_29739AA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

void sub_29739AA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v11 - 96);
  v13 = *(v11 - 80);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(v11 - 72);
  if (!v14)
  {
    _Unwind_Resume(a1);
  }

  dispatch_release(v14);
  _Unwind_Resume(a1);
}

void SARModule::initializeOBD_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing OBD", buf, 2u);
  }

  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
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

  v7 = (*(*this + 16))(this);
  v8 = *(this + 11);
  v31 = v8;
  if (v8)
  {
    v9 = v7;
    dispatch_retain(v8);
    v7 = v9;
  }

  v10 = *(this + 19);
  v29 = *(this + 18);
  v30 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 15);
  v27 = *(this + 14);
  v28 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OBDManager::create(v7, &v31, &v29, &v27, buf);
  v12 = *buf;
  memset(buf, 0, sizeof(buf));
  v13 = *(this + 21);
  *(this + 10) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  v17 = *(this + 20);
  if (v17)
  {
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3321888768;
    v23[2] = ___ZN9SARModule18initializeOBD_syncEv_block_invoke;
    v23[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e11_v16__0C8C12l;
    v23[4] = this;
    v23[5] = v4;
    v24 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v18 = _Block_copy(v23);
    v19 = *(this + 11);
    if (v19)
    {
      dispatch_retain(v19);
    }

    aBlock = v18;
    v26 = v19;
    v20 = v17[6];
    if (v20 >= v17[7])
    {
      v22 = std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)> const&>(v17 + 5, &aBlock);
      v19 = v26;
      v17[6] = v22;
      if (!v19)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v18)
    {
      *v20 = _Block_copy(v18);
      v20[1] = v19;
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    else
    {
      *v20 = 0;
      v20[1] = v19;
      if (!v19)
      {
LABEL_34:
        v17[6] = (v20 + 2);
        if (!v19)
        {
LABEL_36:
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

          goto LABEL_42;
        }

LABEL_35:
        dispatch_release(v19);
        goto LABEL_36;
      }
    }

    dispatch_retain(v19);
    goto LABEL_34;
  }

  v21 = *(this + 13);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to create OBD Manager", buf, 2u);
  }

LABEL_42:
  std::__shared_weak_count::__release_weak(v6);
}

void sub_29739AE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    std::__shared_weak_count::__release_weak(v20);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v20);
  _Unwind_Resume(a1);
}

void SARModule::initializeAccessory_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing Accessory", buf, 2u);
  }

  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
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

  v7 = (*(*this + 16))(this);
  v9 = *(this + 11);
  object = v9;
  if (v9)
  {
    v10 = v7;
    dispatch_retain(v9);
    v7 = v10;
  }

  LegacyAccessoryManager::create(v7, &object, v8, buf);
  v11 = *buf;
  memset(buf, 0, sizeof(buf));
  v12 = *(this + 23);
  *(this + 11) = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v14 = *(this + 22);
  if (v14)
  {
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3321888768;
    v20[2] = ___ZN9SARModule24initializeAccessory_syncEv_block_invoke;
    v20[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e8_v12__0I8l;
    v20[4] = this;
    v20[5] = v4;
    v21 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = _Block_copy(v20);
    v16 = *(this + 11);
    if (v16)
    {
      dispatch_retain(v16);
    }

    aBlock = v15;
    v23 = v16;
    v17 = v14[5];
    if (v17 >= v14[6])
    {
      v19 = std::vector<dispatch::callback<void({block_pointer})>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})> const&>(v14 + 4, &aBlock);
      v16 = v23;
      v14[5] = v19;
      if (!v16)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v15)
    {
      *v17 = _Block_copy(v15);
      v17[1] = v16;
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v17 = 0;
      v17[1] = v16;
      if (!v16)
      {
LABEL_24:
        v14[5] = (v17 + 2);
        if (!v16)
        {
LABEL_26:
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }

          goto LABEL_32;
        }

LABEL_25:
        dispatch_release(v16);
        goto LABEL_26;
      }
    }

    dispatch_retain(v16);
    goto LABEL_24;
  }

  v18 = *(this + 13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v18, OS_LOG_TYPE_ERROR, "Failed to create Legacy Accessory Manager", buf, 2u);
  }

LABEL_32:
  std::__shared_weak_count::__release_weak(v6);
}

void sub_29739B220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, dispatch_object_t object)
{
  dispatch::callback<void({block_pointer})>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    std::__shared_weak_count::__release_weak(v18);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void SARModule::initializePowerSource_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing Power Source", buf, 2u);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v3 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(buf);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    v5 = *(&off_2A1399448 + 1);
    off_2A1399448 = v4;
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

    v3 = off_2A1399448;
  }

  v27 = v3;
  v28 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v7 = *(*v3 + 144);
  v8 = operator new(0x88uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_2A1E3CAD0;
  ctu::OsLogLogger::OsLogLogger((v8 + 3), "com.apple.telephony", "iokit.event");
  ctu::iokit::Controller::create(v7, v9);
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 3) = 0u;
  v8[16] = v7;
  v10 = *(this + 25);
  *(this + 24) = v8 + 3;
  *(this + 25) = v8;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    if (*(this + 24))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 24))
  {
LABEL_19:
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

    v16 = *(this + 24);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN9SARModule26initializePowerSource_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e8_v12__0I8l;
    aBlock[4] = this;
    aBlock[5] = v12;
    v26 = v14;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v17 = _Block_copy(aBlock);
    v18 = *(this + 11);
    if (v18)
    {
      dispatch_retain(*(this + 11));
    }

    if (v17)
    {
      v19 = _Block_copy(v17);
      v20 = *(v16 + 56);
      *(v16 + 56) = v19;
      if (!v20)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = *(v16 + 56);
      *(v16 + 56) = 0;
      if (!v20)
      {
LABEL_33:
        if (v18)
        {
          dispatch_retain(v18);
        }

        v22 = *(v16 + 64);
        *(v16 + 64) = v18;
        if (v22)
        {
          dispatch_release(v22);
        }

        if (v18)
        {
          dispatch_release(v18);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        v23 = *(*(this + 24) + 8);
        if (v23)
        {
          PowerSource = ctu::iokit::Controller::queryPowerSource(v23);
        }

        else
        {
          PowerSource = 1;
        }

        *(this + 52) = PowerSource;
        SARModule::sendPowerSource_sync(this);
        IOKitEventNotifier::start(*(this + 24));
        if (v26)
        {
          std::__shared_weak_count::__release_weak(v26);
        }

        std::__shared_weak_count::__release_weak(v14);
        return;
      }
    }

    _Block_release(v20);
    goto LABEL_33;
  }

  v21 = *(this + 13);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to create Power Source Notifier", buf, 2u);
  }
}

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
        _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Tx is on from SPMI", buf, 2u);
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
        _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Tx is off from SPMI", buf, 2u);
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
  v15 = off_2A1399A88;
  if (!off_2A1399A88)
  {
    ctu::Gestalt::create_default_global(buf, v14);
    v16 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v17 = *(&off_2A1399A88 + 1);
    off_2A1399A88 = v16;
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

    v15 = off_2A1399A88;
  }

  v19 = *(&off_2A1399A88 + 1);
  __dst[0] = v15;
  __dst[1] = *(&off_2A1399A88 + 1);
  if (*(&off_2A1399A88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A88 + 1) + 8), 1uLL, memory_order_relaxed);
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
    _os_log_impl(&dword_297288000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
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
      _os_log_impl(&dword_297288000, v31, OS_LOG_TYPE_DEFAULT, "#I Detected HSAR error: %s", buf, 0xCu);
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
      _os_log_error_impl(&dword_297288000, v40, OS_LOG_TYPE_ERROR, "Detected %s, but AP won't trigger the coredump since %s is not found in the boot-args", buf, 0x16u);
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

void sub_29739BDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
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
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Tx is on", cf, 2u);
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
    if (MEMORY[0x29C26F9F0](v5) == MEMORY[0x29EDCAA00])
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

    v15 = MEMORY[0x29C26F920](v6);
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
        _os_log_error_impl(&dword_297288000, v14, OS_LOG_TYPE_ERROR, "Failed to convert the transmit State data and no sending the message: %s", object, 0xCu);
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

void sub_29739C264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, xpc_object_t object)
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
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Tx is off", buf, 2u);
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
      if (MEMORY[0x29C26F9F0](v20) == MEMORY[0x29EDCAA00])
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
            v32 = MEMORY[0x29C26F920](v21);
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
            _os_log_error_impl(&dword_297288000, v31, OS_LOG_TYPE_ERROR, "Failed to convert the transmit State data and no sending the message: %s", &v52, 0xCu);
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
    _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I Sending Grip State due to Tx is off: 0x%x\n", buf, 8u);
  }

  v6 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v7 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v6);
    v8 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v9 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v8;
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

    v7 = off_2A1399A30;
  }

  v11 = *(&off_2A1399A30 + 1);
  *&v52 = v7;
  *(&v52 + 1) = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
    _os_log_error_impl(&dword_297288000, v23, OS_LOG_TYPE_ERROR, "Failed to get SAR Fusion State!", buf, 2u);
  }

LABEL_77:
  v42 = *MEMORY[0x29EDCA608];
}

void sub_29739CA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
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
    if (MEMORY[0x29C26F9F0](v6) == MEMORY[0x29EDCAA00])
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
    *&__p[8] = xmmword_2974315E0;
    qmemcpy(v13, "Dump coredump along with telephony logs", 39);
    v14 = v13 + 39;
  }

  else if (a3 == 1)
  {
    v13 = operator new(0x20uLL);
    *__p = v13;
    *&__p[8] = xmmword_29742C690;
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
    *&__p[8] = xmmword_29742C6A0;
    qmemcpy(v13, "No Action for dumping log", 25);
    v14 = v13 + 25;
  }

  *v14 = 0;
  *buf = 136315138;
  *v37 = v13;
  _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Behavior: %s", buf, 0xCu);
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

void sub_29739D134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21)
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
          _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Received audio speaker callback with state: %s", &v12, 0xCu);
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
  v3 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v2);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    v5 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v4;
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

    v3 = off_2A1399A30;
  }

  v7 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
    _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Failed to send speaker state", buf, 2u);
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
    _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Sending SAR Selection: 0x%x, Tuner State: 0x%x\n", buf, 0xEu);
  }

  v12 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v13 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v12);
    v14 = *buf;
    memset(buf, 0, sizeof(buf));
    v15 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v14;
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

    v13 = off_2A1399A30;
  }

  v17 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
    _os_log_error_impl(&dword_297288000, v20, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion!", buf, 2u);
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
    _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I [Legacy] Sending accessory state to driver: 0x%x", buf, 8u);
  }

  v13 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v14 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v13);
    v15 = *buf;
    memset(buf, 0, sizeof(buf));
    v16 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v15;
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

    v14 = off_2A1399A30;
  }

  v18 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
  _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion State!", buf, 2u);
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
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Sending Power Source: 0x%x\n", buf, 8u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v6;
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

    v5 = off_2A1399A30;
  }

  v9 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
    _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "Failed to send power state", buf, 2u);
  }

LABEL_21:
  v12 = *MEMORY[0x29EDCA608];
}

void ___ZN9SARModule28initializeHandDetection_syncEv_block_invoke(void *a1, unsigned __int8 a2)
{
  v33[1] = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_36;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
LABEL_36:
      v28 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  if (*(v5 + 232))
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 136) = v9;
  v10 = *(v5 + 104);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I Sending Grip State: 0x%x\n", buf, 8u);
  }

  v11 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v12 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v11);
    v13 = *buf;
    memset(buf, 0, sizeof(buf));
    v14 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v12 = off_2A1399A30;
  }

  v16 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v30 = *(v5 + 136);
  if (*(v12 + 1))
  {
    *buf = 0;
    v33[0] = 0;
    v31 = 1;
    v17 = AppleSARHelper::callUserClientMethod(v12, 9, buf, 1, &v30, 1, v33, &v31, &v30, 1uLL);
    if (!v16)
    {
LABEL_27:
      if (v17)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v17 = 0;
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_27;
  }

  v26 = v17;
  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (v26)
  {
LABEL_28:
    if (*(v5 + 137) != *(v5 + 136) || !*(v5 + 272))
    {
      v18 = *(v5 + 80);
      if (!v18 || (v19 = *(v5 + 72), (v20 = std::__shared_weak_count::lock(v18)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v21 = v20;
      v22 = operator new(8uLL);
      *v22 = v5;
      v23 = *(v5 + 88);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = operator new(0x18uLL);
      *v24 = v22;
      v24[1] = v19;
      v24[2] = v21;
      dispatch_async_f(v23, v24, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28initializeHandDetection_syncEvEUb6_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v25 = *MEMORY[0x29EDCA608];
        return;
      }
    }

    goto LABEL_36;
  }

LABEL_35:
  v27 = *(v5 + 104);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_36;
  }

  *buf = 0;
  _os_log_error_impl(&dword_297288000, v27, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion State!", buf, 2u);
  v29 = *MEMORY[0x29EDCA608];
}

void sub_29739E4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
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
      _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "No provider ID. Reject this call", &v23, 2u);
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
    _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I %s: callStarting: %s, callActive: %s", &v23, 0x20u);
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
  _os_log_debug_impl(&dword_297288000, v20, OS_LOG_TYPE_DEBUG, "#D No matching condition to check FT Call status", &v23, 2u);
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
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Processing Cached Values", buf, 2u);
  }

  capabilities::abs::supportedSARFeatures(v3);
  if (capabilities::abs::operator&())
  {
    BYTE2(v81) = 0;
    LOWORD(v81) = 0;
    v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
    v5 = off_2A1399A30;
    if (!off_2A1399A30)
    {
      AppleSARHelper::create_default_global(buf, v4);
      v6 = *buf;
      memset(buf, 0, sizeof(buf));
      v7 = *(&off_2A1399A30 + 1);
      off_2A1399A30 = v6;
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

      v5 = off_2A1399A30;
    }

    v9 = *(&off_2A1399A30 + 1);
    v79 = v5;
    v80 = *(&off_2A1399A30 + 1);
    if (*(&off_2A1399A30 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
      _os_log_error_impl(&dword_297288000, v21, OS_LOG_TYPE_ERROR, "Failed to get SAR transition time!", buf, 2u);
    }
  }

LABEL_36:
  v22 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v23 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v22);
    v24 = *buf;
    memset(buf, 0, sizeof(buf));
    v25 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v24;
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

    v23 = off_2A1399A30;
  }

  v27 = *(&off_2A1399A30 + 1);
  v79 = v23;
  v80 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
      _os_log_error_impl(&dword_297288000, v37, OS_LOG_TYPE_ERROR, v38, buf, 2u);
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
  v30 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v29);
    v31 = *buf;
    memset(buf, 0, sizeof(buf));
    v32 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v31;
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

    v30 = off_2A1399A30;
  }

  v34 = *(&off_2A1399A30 + 1);
  v79 = v30;
  v80 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v40 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v39);
    v41 = *buf;
    memset(buf, 0, sizeof(buf));
    v42 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v41;
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

    v40 = off_2A1399A30;
  }

  v44 = *(&off_2A1399A30 + 1);
  v79 = v40;
  v80 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v48 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v47);
    v49 = *buf;
    memset(buf, 0, sizeof(buf));
    v50 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v49;
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

    v48 = off_2A1399A30;
  }

  v52 = *(&off_2A1399A30 + 1);
  v79 = v48;
  v80 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v57 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v56);
    v58 = *buf;
    memset(buf, 0, sizeof(buf));
    v59 = *(&off_2A1399A30 + 1);
    off_2A1399A30 = v58;
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

    v57 = off_2A1399A30;
  }

  v61 = *(&off_2A1399A30 + 1);
  v79 = v57;
  v80 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v65 = off_2A1399A30;
  if (!off_2A1399A30)
  {
    AppleSARHelper::create_default_global(buf, v64);
    std::shared_ptr<AppleSARHelper>::operator=[abi:ne200100](buf);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](buf);
    v65 = off_2A1399A30;
  }

  v66 = *(&off_2A1399A30 + 1);
  v79 = v65;
  v80 = *(&off_2A1399A30 + 1);
  if (*(&off_2A1399A30 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
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
    v70 = off_2A1399A30;
    if (!off_2A1399A30)
    {
      AppleSARHelper::create_default_global(buf, v69);
      std::shared_ptr<AppleSARHelper>::operator=[abi:ne200100](buf);
      std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](buf);
      v70 = off_2A1399A30;
    }

    v79 = v70;
    v80 = *(&off_2A1399A30 + 1);
    if (*(&off_2A1399A30 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399A30 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
    buf[0] = *(this + 139);
    v71 = AppleSARHelper::dataAction<sar::SARFusion_WristState>(v70, buf);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&v79);
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