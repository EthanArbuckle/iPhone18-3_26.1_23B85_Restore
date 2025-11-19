BOOL prop::coredump::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE5F8];
  v5 = strlen(*MEMORY[0x29EDBE5F8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297604CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::ipc::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBF8E8];
  v5 = strlen(*MEMORY[0x29EDBF8E8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297604E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::bbipc::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE7A8];
  v5 = strlen(*MEMORY[0x29EDBE7A8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297604FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::compression::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE7B0];
  v5 = strlen(*MEMORY[0x29EDBE7B0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29760513C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::ttr::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE718];
  v5 = strlen(*MEMORY[0x29EDBE718]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_2976052B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::logfilter::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE528];
  v5 = strlen(*MEMORY[0x29EDBE528]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297605434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::systemlogs::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE710];
  v5 = strlen(*MEMORY[0x29EDBE710]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_2976055B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::profile::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE5B0];
  v5 = strlen(*MEMORY[0x29EDBE5B0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29760572C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::tailspin::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE608];
  v5 = strlen(*MEMORY[0x29EDBE608]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_2976058A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE600];
  v5 = strlen(*MEMORY[0x29EDBE600]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297605A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t prop::set(char *a1, char *a2, char *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBFC60]) && strcasecmp(v6, *MEMORY[0x29EDBFC58]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {
                          v20 = *MEMORY[0x29EDCA608];

                          return prop::tracesettings::set(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A18CB2E8;
                          if (os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v21 = a1;
                            }

                            else
                            {
                              v21 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v22 = a2;
                            }

                            else
                            {
                              v22 = *a2;
                            }

                            if (a3[23] >= 0)
                            {
                              v23 = a3;
                            }

                            else
                            {
                              v23 = *a3;
                            }

                            v25 = 136315650;
                            v26 = v21;
                            v27 = 2080;
                            v28 = v22;
                            v29 = 2080;
                            v30 = v23;
                            _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "set: Invalid domain; domain='%s' key='%s' value='%s'", &v25, 0x20u);
                            v24 = *MEMORY[0x29EDCA608];
                          }

                          else
                          {
                            v8 = *MEMORY[0x29EDCA608];
                          }

                          return 0;
                        }
                      }

                      goto LABEL_34;
                    }

                    goto LABEL_61;
                  }

                  goto LABEL_58;
                }

                goto LABEL_55;
              }

              goto LABEL_52;
            }

            goto LABEL_49;
          }

          goto LABEL_46;
        }

        goto LABEL_40;
      }

      goto LABEL_43;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBFC60]) && strcasecmp(a1, *MEMORY[0x29EDBFC58]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_34:
                    v10 = *MEMORY[0x29EDCA608];

                    return prop::tailspin::set(a2, a3);
                  }

LABEL_61:
                  v19 = *MEMORY[0x29EDCA608];

                  return prop::profile::set(a2, a3);
                }

LABEL_58:
                v18 = *MEMORY[0x29EDCA608];

                return prop::systemlogs::set(a2, a3);
              }

LABEL_55:
              v17 = *MEMORY[0x29EDCA608];

              return prop::logfilter::set(a2, a3);
            }

LABEL_52:
            v16 = *MEMORY[0x29EDCA608];

            return prop::ttr::set(a2, a3);
          }

LABEL_49:
          v15 = *MEMORY[0x29EDCA608];

          return prop::compression::set(a2, a3);
        }

LABEL_46:
        v14 = *MEMORY[0x29EDCA608];

        return prop::bbipc::set(a2, a3);
      }

LABEL_40:
      v12 = *MEMORY[0x29EDCA608];

      return prop::ipc::set(a2, a3);
    }

LABEL_43:
    v13 = *MEMORY[0x29EDCA608];

    return prop::coredump::set(a2, a3);
  }

  v11 = *MEMORY[0x29EDCA608];

  return prop::bbtrace::set(a2, a3);
}

uint64_t prop::bbtrace::set(char *a1, uint64_t a2)
{
  v142 = *MEMORY[0x29EDCA608];
  memset(&v139, 170, sizeof(v139));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, *a2, *(a2 + 8));
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v139 = *a2;
    if (strcmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbtrace::get(a1, &v139))
  {
    goto LABEL_378;
  }

LABEL_9:
  v5 = a1[23];
  if ((v5 & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBE798]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBEA30]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBF208]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE8F8]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE880]))
                {
                  v6 = *MEMORY[0x29EDBE6E8];
                  v7 = a1;
                  if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
                  {
                    goto LABEL_18;
                  }

                  goto LABEL_37;
                }

LABEL_107:
                *__dst = -1431655766;
                if (!util::convert<int>(&v139, __dst, 0))
                {
                  goto LABEL_378;
                }

                v49 = *__dst;
                std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                LODWORD(__p.__r_.__value_.__l.__data_) = v49;
                v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
LABEL_121:
                v16 = v39;
LABEL_122:
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                goto LABEL_379;
              }

LABEL_92:
              v40 = *MEMORY[0x29EDBF8A0];
              v41 = strlen(*MEMORY[0x29EDBF8A0]);
              if (v41 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v42 = v41;
              if (v41 >= 0x17)
              {
                if ((v41 | 7) == 0x17)
                {
                  v50 = 25;
                }

                else
                {
                  v50 = (v41 | 7) + 1;
                }

                v43 = operator new(v50);
                *&__dst[8] = v42;
                *&__dst[16] = v50 | 0x8000000000000000;
                *__dst = v43;
              }

              else
              {
                __dst[23] = v41;
                v43 = __dst;
                if (!v41)
                {
                  goto LABEL_114;
                }
              }

              memmove(v43, v40, v42);
LABEL_114:
              v43[v42] = 0;
              v39 = prop::file::set<std::string>(__dst, a1, &v139);
              goto LABEL_121;
            }

LABEL_77:
            *__dst = -1431655766;
            if (!util::convert<int>(&v139, __dst, 0))
            {
              goto LABEL_378;
            }

            v32 = *__dst;
            v33 = *MEMORY[0x29EDBF8A0];
            v34 = strlen(*MEMORY[0x29EDBF8A0]);
            if (v34 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v35 = v34;
            if (v34 >= 0x17)
            {
              if ((v34 | 7) == 0x17)
              {
                v51 = 25;
              }

              else
              {
                v51 = (v34 | 7) + 1;
              }

              v36 = operator new(v51);
              *&__dst[8] = v35;
              *&__dst[16] = v51 | 0x8000000000000000;
              *__dst = v36;
            }

            else
            {
              __dst[23] = v34;
              v36 = __dst;
              if (!v34)
              {
                goto LABEL_120;
              }
            }

            memmove(v36, v33, v35);
LABEL_120:
            v36[v35] = 0;
            LODWORD(__p.__r_.__value_.__l.__data_) = v32;
            v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
            goto LABEL_121;
          }

LABEL_66:
          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          v27 = util::convert<int>(&v139, &__p, 0);
          v28 = v27;
          v29 = capabilities::radio::maverick(v27);
          if (v29)
          {
            if (LODWORD(__p.__r_.__value_.__l.__data_) < 5)
            {
              v30 = v28;
            }

            else
            {
              v30 = 0;
            }

            if ((v30 & 1) == 0)
            {
              goto LABEL_378;
            }
          }

          else
          {
            v37 = capabilities::radio::ice(v29);
            if ((v37 & v28) == 1)
            {
              v16 = 0;
              if (LODWORD(__p.__r_.__value_.__l.__data_) > 6 || ((1 << __p.__r_.__value_.__s.__data_[0]) & 0x45) == 0)
              {
                goto LABEL_379;
              }
            }

            else if (((v37 ^ 1) & v28) != 1)
            {
              goto LABEL_378;
            }
          }

          v44 = *MEMORY[0x29EDBF8A0];
          v45 = strlen(*MEMORY[0x29EDBF8A0]);
          if (v45 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v46 = v45;
          if (v45 >= 0x17)
          {
            if ((v45 | 7) == 0x17)
            {
              v48 = 25;
            }

            else
            {
              v48 = (v45 | 7) + 1;
            }

            v47 = operator new(v48);
            *&__dst[8] = v46;
            *&__dst[16] = v48 | 0x8000000000000000;
            *__dst = v47;
          }

          else
          {
            __dst[23] = v45;
            v47 = __dst;
            if (!v45)
            {
              goto LABEL_106;
            }
          }

          memmove(v47, v44, v46);
LABEL_106:
          v47[v46] = 0;
          v39 = prop::file::set<int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_56:
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v139, &__p, 0))
        {
          goto LABEL_378;
        }

        v20 = *MEMORY[0x29EDBF8A0];
        v25 = strlen(*MEMORY[0x29EDBF8A0]);
        if (v25 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v22 = v25;
        if (v25 >= 0x17)
        {
          if ((v25 | 7) == 0x17)
          {
            v38 = 25;
          }

          else
          {
            v38 = (v25 | 7) + 1;
          }

          v23 = operator new(v38);
          *&__dst[8] = v22;
          *&__dst[16] = v38 | 0x8000000000000000;
          *__dst = v23;
        }

        else
        {
          __dst[23] = v25;
          v23 = __dst;
          if (!v25)
          {
            goto LABEL_91;
          }
        }

        goto LABEL_90;
      }

LABEL_51:
      __p.__r_.__value_.__s.__data_[0] = -86;
      if (!util::convert<BOOL>(&v139, &__p, 0))
      {
        goto LABEL_378;
      }

      v20 = *MEMORY[0x29EDBF8A0];
      v24 = strlen(*MEMORY[0x29EDBF8A0]);
      if (v24 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v24;
      if (v24 >= 0x17)
      {
        if ((v24 | 7) == 0x17)
        {
          v31 = 25;
        }

        else
        {
          v31 = (v24 | 7) + 1;
        }

        v23 = operator new(v31);
        *&__dst[8] = v22;
        *&__dst[16] = v31 | 0x8000000000000000;
        *__dst = v23;
      }

      else
      {
        __dst[23] = v24;
        v23 = __dst;
        if (!v24)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_90;
    }

LABEL_46:
    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v139, &__p, 0))
    {
      goto LABEL_378;
    }

    v20 = *MEMORY[0x29EDBF8A0];
    v21 = strlen(*MEMORY[0x29EDBF8A0]);
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      if ((v21 | 7) == 0x17)
      {
        v26 = 25;
      }

      else
      {
        v26 = (v21 | 7) + 1;
      }

      v23 = operator new(v26);
      *&__dst[8] = v22;
      *&__dst[16] = v26 | 0x8000000000000000;
      *__dst = v23;
    }

    else
    {
      __dst[23] = v21;
      v23 = __dst;
      if (!v21)
      {
        goto LABEL_91;
      }
    }

LABEL_90:
    memmove(v23, v20, v22);
LABEL_91:
    v23[v22] = 0;
    v39 = prop::file::set<BOOL>(__dst, a1, &__p);
    goto LABEL_121;
  }

  v7 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_46;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE798]))
  {
    goto LABEL_51;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBEA30]))
  {
    goto LABEL_56;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_66;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_77;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_92;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE880]))
  {
    goto LABEL_107;
  }

  v6 = *MEMORY[0x29EDBE6E8];
  if (strcasecmp(v7, *MEMORY[0x29EDBE6E8]))
  {
LABEL_18:
    v8 = MEMORY[0x29EDBD4C8];
    v9 = strcasecmp(v7, *MEMORY[0x29EDBD4C8]);
    if (!v9)
    {
      v52 = capabilities::radio::maverick(v9);
      if (v52 & 1) != 0 || (capabilities::radio::ice(v52))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v139, __dst, 0) & 1) == 0)
        {
          goto LABEL_378;
        }

        v53 = *__dst;
        if (*__dst > 2u)
        {
          goto LABEL_378;
        }

        goto LABEL_364;
      }

      LOBYTE(v5) = a1[23];
    }

    v10 = *a1;
    if ((v5 & 0x80u) == 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = strcasecmp(v11, *MEMORY[0x29EDBF1F8]);
    if (!v12)
    {
      if (capabilities::trace::supportsDataRateObserver(v12))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        v13 = util::convert<unsigned int>(&v139, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 0xBB9)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14 == 1)
        {
          goto LABEL_354;
        }

        goto LABEL_378;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v54 = a1;
    }

    else
    {
      v54 = v10;
    }

    v55 = strcasecmp(v54, *v8);
    if (!v55)
    {
      if (capabilities::radio::initium(v55))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        v56 = util::convert<unsigned int>(&v139, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        if (v57 == 1)
        {
          goto LABEL_354;
        }

        goto LABEL_378;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v58 = a1;
    }

    else
    {
      v58 = v10;
    }

    v59 = strcasecmp(v58, *MEMORY[0x29EDBFCB8]);
    if (!v59)
    {
      if (capabilities::radio::initium(v59))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v139, __dst, 0) & 1) == 0)
        {
          goto LABEL_378;
        }

        v53 = *__dst;
        if (*__dst > 3u)
        {
          goto LABEL_378;
        }

LABEL_364:
        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        LODWORD(__p.__r_.__value_.__l.__data_) = v53;
        v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v60 = a1;
    }

    else
    {
      v60 = v10;
    }

    v61 = strcasecmp(v60, *MEMORY[0x29EDBD4B8]);
    if (!v61)
    {
      if (capabilities::radio::maverick(v61))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v139, &__p, 0))
        {
          goto LABEL_378;
        }

        goto LABEL_285;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v62 = a1;
    }

    else
    {
      v62 = v10;
    }

    v63 = strcasecmp(v62, *MEMORY[0x29EDBD4B0]);
    if (!v63)
    {
      if (capabilities::radio::maverick(v63))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v139, &__p, 0))
        {
          goto LABEL_378;
        }

        goto LABEL_285;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v64 = a1;
    }

    else
    {
      v64 = v10;
    }

    v65 = strcasecmp(v64, *MEMORY[0x29EDBD4D0]);
    if (!v65)
    {
      if (capabilities::radio::maverick(v65))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (util::convert<unsigned int>(&v139, &__p))
        {
LABEL_354:
          std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
          v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_378:
        v16 = 0;
        goto LABEL_379;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v66 = a1;
    }

    else
    {
      v66 = v10;
    }

    v67 = strcasecmp(v66, *MEMORY[0x29EDBD4D8]);
    if (!v67)
    {
      if (capabilities::radio::maverick(v67))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (!diag::config::asEnum())
        {
          goto LABEL_378;
        }

        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        data = __p.__r_.__value_.__l.__data_;
        v39 = prop::file::set<unsigned int>(__dst, a1, &data);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
    }

    if ((v5 & 0x80) != 0)
    {
      v68 = *a1;
      if (strcasecmp(*a1, *MEMORY[0x29EDBD4C0]))
      {
LABEL_185:
        v69 = *MEMORY[0x29EDBF200];
        v70 = strcasecmp(v68, *MEMORY[0x29EDBF200]);
        if (!v70)
        {
          if (capabilities::radio::maverick(v70))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v71 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_323;
          }
        }

        else
        {
          v71 = a1;
          if (!strcasecmp(a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_323;
          }
        }

        v72 = strcasecmp(v71, *MEMORY[0x29EDBD4A8]);
        if (!v72)
        {
          if (capabilities::radio::maverick(v72))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80u) == 0)
        {
          v73 = a1;
        }

        else
        {
          v73 = *a1;
        }

        v74 = *MEMORY[0x29EDBEF70];
        v75 = strcasecmp(v73, *MEMORY[0x29EDBEF70]);
        if (!v75)
        {
          if (capabilities::radio::maverick(v75))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v76 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_323;
          }
        }

        else
        {
          v76 = a1;
          if (!strcasecmp(a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_323;
          }
        }

        v77 = strcasecmp(v76, v69);
        if (!v77)
        {
          v85 = capabilities::radio::ice(v77);
          if (v85 & 1) != 0 || (capabilities::radio::initium(v85))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
        }

        v78 = *a1;
        if ((v5 & 0x80u) == 0)
        {
          v79 = a1;
        }

        else
        {
          v79 = *a1;
        }

        v80 = strcasecmp(v79, v74);
        if (!v80)
        {
          v86 = capabilities::radio::ice(v80);
          if (v86 & 1) != 0 || (capabilities::radio::initium(v86))
          {
            goto LABEL_323;
          }

          LOBYTE(v5) = a1[23];
          v78 = *a1;
        }

        if ((v5 & 0x80u) == 0)
        {
          v81 = a1;
        }

        else
        {
          v81 = v78;
        }

        v82 = strcasecmp(v81, *MEMORY[0x29EDBEB20]);
        if (!v82)
        {
          if (capabilities::radio::initium(v82))
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
            v83 = util::convert<int>(&v139, &__p, 0);
            if (LODWORD(__p.__r_.__value_.__l.__data_) < 4)
            {
              v84 = v83;
            }

            else
            {
              v84 = 0;
            }

            if (v84 != 1)
            {
              goto LABEL_378;
            }

            goto LABEL_334;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v87 = *a1;
          if (strcasecmp(*a1, *MEMORY[0x29EDBFCB0]))
          {
LABEL_234:
            v88 = strcasecmp(v87, *MEMORY[0x29EDBFC88]);
            if (!v88)
            {
              if (capabilities::radio::ice(v88))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                v89 = util::convert<int>(&v139, &__p, 0);
                if (LODWORD(__p.__r_.__value_.__l.__data_) < 0x65)
                {
                  v90 = v89;
                }

                else
                {
                  v90 = 0;
                }

                if (v90 != 1)
                {
                  goto LABEL_378;
                }

                goto LABEL_334;
              }

              LOBYTE(v5) = a1[23];
            }

            v91 = *a1;
            if ((v5 & 0x80u) == 0)
            {
              v92 = a1;
            }

            else
            {
              v92 = *a1;
            }

            v93 = strcasecmp(v92, *MEMORY[0x29EDBFC70]);
            if (!v93)
            {
              if (capabilities::radio::ice(v93))
              {
                LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                v94 = util::convert<int>(&v139, &__p, 0);
                if (LODWORD(__p.__r_.__value_.__l.__data_) < 0x65)
                {
                  v95 = v94;
                }

                else
                {
                  v95 = 0;
                }

                if (v95 != 1)
                {
                  goto LABEL_378;
                }

                goto LABEL_334;
              }

              LOBYTE(v5) = a1[23];
              v91 = *a1;
            }

            if ((v5 & 0x80u) == 0)
            {
              v96 = a1;
            }

            else
            {
              v96 = v91;
            }

            v97 = strcasecmp(v96, *MEMORY[0x29EDBFC68]);
            if (!v97)
            {
              if (capabilities::radio::ice(v97))
              {
                goto LABEL_323;
              }

              LOBYTE(v5) = a1[23];
            }

            if ((v5 & 0x80) != 0)
            {
              v98 = *a1;
              if (strcasecmp(*a1, *MEMORY[0x29EDBF7F0]))
              {
                if (!strcasecmp(v98, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v98, *MEMORY[0x29EDBF7B8]))
                {
                  goto LABEL_323;
                }

                if (strcasecmp(v98, *MEMORY[0x29EDBE790]))
                {
                  if (!strcasecmp(v98, *MEMORY[0x29EDBEDD8]) || !strcasecmp(v98, *MEMORY[0x29EDBEF80]))
                  {
                    goto LABEL_323;
                  }

                  if (strcasecmp(v98, *MEMORY[0x29EDBF410]))
                  {
LABEL_272:
                    v99 = strcasecmp(v98, *MEMORY[0x29EDBFC98]);
                    if (!v99)
                    {
                      if (capabilities::radio::dal(v99))
                      {
                        goto LABEL_323;
                      }

                      LOBYTE(v5) = a1[23];
                    }

                    v110 = *a1;
                    if ((v5 & 0x80u) == 0)
                    {
                      v111 = a1;
                    }

                    else
                    {
                      v111 = *a1;
                    }

                    v112 = strcasecmp(v111, *MEMORY[0x29EDBFC80]);
                    if (!v112)
                    {
                      if (capabilities::radio::dal(v112))
                      {
                        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                        v113 = util::convert<int>(&v139, &__p, 0);
                        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                        {
                          v114 = v113;
                        }

                        else
                        {
                          v114 = 0;
                        }

                        if (v114 != 1)
                        {
                          goto LABEL_378;
                        }

                        goto LABEL_334;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v115 = a1;
                    }

                    else
                    {
                      v115 = v110;
                    }

                    v116 = strcasecmp(v115, *MEMORY[0x29EDBFC90]);
                    if (!v116)
                    {
                      if (capabilities::radio::dal(v116))
                      {
LABEL_323:
                        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                        v39 = prop::file::set<std::string>(__dst, a1, &v139);
                        goto LABEL_121;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v117 = a1;
                    }

                    else
                    {
                      v117 = v110;
                    }

                    v118 = strcasecmp(v117, *MEMORY[0x29EDBFC78]);
                    if (!v118)
                    {
                      if (capabilities::radio::dal(v118))
                      {
                        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                        v119 = util::convert<int>(&v139, &__p, 0);
                        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                        {
                          v120 = v119;
                        }

                        else
                        {
                          v120 = 0;
                        }

                        if (v120 != 1)
                        {
                          goto LABEL_378;
                        }

                        goto LABEL_334;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v121 = a1;
                    }

                    else
                    {
                      v121 = v110;
                    }

                    v122 = strcasecmp(v121, *MEMORY[0x29EDBFCA8]);
                    if (!v122)
                    {
                      if (capabilities::trace::supportsErrorHandling(v122))
                      {
                        *__dst = -1431655766;
                        if ((util::convert<int>(&v139, __dst, 0) & 1) == 0)
                        {
                          goto LABEL_378;
                        }

                        v53 = *__dst;
                        if (*__dst > 2u)
                        {
                          goto LABEL_378;
                        }

                        goto LABEL_364;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v123 = a1;
                    }

                    else
                    {
                      v123 = v110;
                    }

                    v124 = strcasecmp(v123, *MEMORY[0x29EDBF648]);
                    if (!v124)
                    {
                      if (capabilities::radio::initium(v124))
                      {
                        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                        v125 = util::convert<unsigned int>(&v139, &__p);
                        if (LODWORD(__p.__r_.__value_.__l.__data_))
                        {
                          v126 = v125;
                        }

                        else
                        {
                          v126 = 0;
                        }

                        if (v126 == 1)
                        {
                          goto LABEL_354;
                        }

                        goto LABEL_378;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v127 = a1;
                    }

                    else
                    {
                      v127 = v110;
                    }

                    v128 = strcasecmp(v127, *MEMORY[0x29EDBF500]);
                    if (!v128)
                    {
                      if (capabilities::radio::initium(v128))
                      {
                        *__dst = -1431655766;
                        if ((util::convert<int>(&v139, __dst, 0) & 1) == 0)
                        {
                          goto LABEL_378;
                        }

                        v53 = *__dst;
                        if (*__dst > 2u)
                        {
                          goto LABEL_378;
                        }

                        goto LABEL_364;
                      }

                      LOBYTE(v5) = a1[23];
                      v110 = *a1;
                    }

                    if ((v5 & 0x80u) == 0)
                    {
                      v129 = a1;
                    }

                    else
                    {
                      v129 = v110;
                    }

                    if (!strcasecmp(v129, *MEMORY[0x29EDBF2D8]))
                    {
                      std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                      v39 = prop::file::set<std::string>(__dst, a1, a2);
                      goto LABEL_121;
                    }

                    sGetOsLogContext();
                    v130 = qword_2A18CB2E8;
                    if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_378;
                    }

                    v131 = *MEMORY[0x29EDBF8A0];
                    if (a1[23] >= 0)
                    {
                      v132 = a1;
                    }

                    else
                    {
                      v132 = *a1;
                    }

                    v133 = &v139;
                    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v133 = v139.__r_.__value_.__r.__words[0];
                    }

                    *__dst = 136315650;
                    *&__dst[4] = v131;
                    *&__dst[12] = 2080;
                    *&__dst[14] = v132;
                    *&__dst[22] = 2080;
                    v141 = v133;
                    v107 = "[bbtrace] set: Invalid key; domain='%s' key='%s' value='%s'";
                    v108 = v130;
                    v109 = 32;
LABEL_377:
                    _os_log_error_impl(&dword_297476000, v108, OS_LOG_TYPE_ERROR, v107, __dst, v109);
                    goto LABEL_378;
                  }

                  goto LABEL_282;
                }

LABEL_288:
                data = -1431655766;
                v100 = util::convert<unsigned int>(&v139, &data);
                if (v100)
                {
                  v101 = data;
                  v102 = defaults::bbtrace::min_file_size(v100);
                  if (v101 < v102)
                  {
                    v101 = defaults::bbtrace::min_file_size(v102);
                  }

                  if (!v101)
                  {
                    sGetOsLogContext();
                    v106 = qword_2A18CB2E8;
                    if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_378;
                    }

                    *__dst = 0;
                    v107 = "file size cannot be 0";
                    v108 = v106;
                    v109 = 2;
                    goto LABEL_377;
                  }

                  data = 1 << (__clz(v101) ^ 0x1F);
                  std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                  v100 = prop::file::set<unsigned int>(__dst, a1, &data);
                  v103 = v100;
                  if ((__dst[23] & 0x80000000) != 0)
                  {
                    operator delete(*__dst);
                  }
                }

                else
                {
                  v103 = 0;
                }

                v104 = capabilities::trace::defaultHistorySizeMB(v100);
                v105 = 0x7FFFFFFF;
                if (v104 < 0x7FFFFFFF)
                {
                  v105 = v104;
                }

                __val = v105;
                std::string::basic_string[abi:ne200100]<0>(__dst, v6);
                prop::bbtrace::get<int>(__dst, &__val);
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                if (v103)
                {
                  std::string::basic_string[abi:ne200100]<0>(__dst, v6);
                  std::to_string(&__p, __val);
                  v16 = prop::bbtrace::set(__dst, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_122;
                }

                goto LABEL_378;
              }
            }

            else if (strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
            {
              if (!strcasecmp(a1, *MEMORY[0x29EDBF7B0]) || !strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
              {
                goto LABEL_323;
              }

              if (strcasecmp(a1, *MEMORY[0x29EDBE790]))
              {
                if (!strcasecmp(a1, *MEMORY[0x29EDBEDD8]) || !strcasecmp(a1, *MEMORY[0x29EDBEF80]))
                {
                  goto LABEL_323;
                }

                v98 = a1;
                if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
                {
                  goto LABEL_272;
                }

LABEL_282:
                __p.__r_.__value_.__s.__data_[0] = -86;
                if (!util::convert<BOOL>(&v139, &__p, 0))
                {
                  goto LABEL_378;
                }

                goto LABEL_285;
              }

              goto LABEL_288;
            }

            __p.__r_.__value_.__s.__data_[0] = 0;
            if (!util::convert<BOOL>(&v139, &__p, 0))
            {
              goto LABEL_378;
            }

LABEL_285:
            std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
            v39 = prop::file::set<BOOL>(__dst, a1, &__p);
            goto LABEL_121;
          }
        }

        else
        {
          v87 = a1;
          if (strcasecmp(a1, *MEMORY[0x29EDBFCB0]))
          {
            goto LABEL_234;
          }
        }

        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v139, &__p, 0))
        {
          goto LABEL_378;
        }

        goto LABEL_285;
      }
    }

    else
    {
      v68 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBD4C0]))
      {
        goto LABEL_185;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v139, &__p, 0))
    {
      goto LABEL_378;
    }

    goto LABEL_285;
  }

LABEL_37:
  LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
  v15 = util::convert<int>(&v139, &__p, 0);
  v16 = v15;
  if (SLODWORD(__p.__r_.__value_.__l.__data_) < 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    v18 = capabilities::trace::defaultHistorySizeMB(v15);
    v19 = 0x7FFFFFFF;
    if (v18 < 0x7FFFFFFF)
    {
      v19 = v18;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = v19;
  }

  if (v16)
  {
LABEL_334:
    std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
    v39 = prop::file::set<int>(__dst, a1, &__p);
    goto LABEL_121;
  }

LABEL_379:
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v134 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_297607A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::coredump::set(std::string::size_type a1, char *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(&v20, 170, sizeof(v20));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::coredump::get(a1, &v20))
  {
    goto LABEL_39;
  }

LABEL_9:
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (strcasecmp(v5, *MEMORY[0x29EDBE6E0]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    v7 = *MEMORY[0x29EDBE5F8];
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v22 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[coredump] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_39:
    v15 = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v19 = -86;
  if (!util::convert<BOOL>(&v20, &v19, 0))
  {
    goto LABEL_39;
  }

  v10 = *MEMORY[0x29EDBE5F8];
  v11 = strlen(*MEMORY[0x29EDBE5F8]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
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
    *&buf[8] = v12;
    *&buf[16] = v14 | 0x8000000000000000;
    *buf = v13;
    goto LABEL_31;
  }

  buf[23] = v11;
  v13 = buf;
  if (v11)
  {
LABEL_31:
    memmove(v13, v10, v12);
  }

  v13[v12] = 0;
  v15 = prop::file::set<BOOL>(buf, a1, &v19);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }
  }

  else if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_40:
    operator delete(v20.__r_.__value_.__l.__data_);
    v18 = *MEMORY[0x29EDCA608];
    return v15;
  }

LABEL_34:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_2976081BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t prop::ipc::set(char *a1, char *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(&v29, 170, sizeof(v29));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v29 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::ipc::get(a1, &v29))
  {
    goto LABEL_57;
  }

LABEL_9:
  if (a1[23] < 0)
  {
    v5 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
    {
      if (strcasecmp(v5, *MEMORY[0x29EDBE6E8]))
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

LABEL_33:
    LOBYTE(v28) = -86;
    if (!util::convert<BOOL>(&v29, &v28, 0))
    {
      goto LABEL_57;
    }

    v17 = *MEMORY[0x29EDBF8E8];
    v18 = strlen(*MEMORY[0x29EDBF8E8]);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v18 | 7) + 1;
      }

      v20 = operator new(v21);
      *&buf[8] = v19;
      *&buf[16] = v21 | 0x8000000000000000;
      *buf = v20;
    }

    else
    {
      buf[23] = v18;
      v20 = buf;
      if (!v18)
      {
        goto LABEL_43;
      }
    }

    memmove(v20, v17, v19);
LABEL_43:
    v20[v19] = 0;
    v22 = prop::file::set<BOOL>(buf, a1, &v28);
    goto LABEL_50;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_33;
  }

  v5 = a1;
  if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
  {
LABEL_12:
    v6 = strcasecmp(v5, "BufferCount");
    if (v6 || (capabilities::ipc::supportsPCI(v6) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
      {
        qword_2A18CB2E0 = 0;
        qword_2A18CB2E8 = 0;
        __cxa_guard_release(&qword_2A18CB2D8);
      }

      if (_MergedGlobals_12 == -1)
      {
        v7 = qword_2A18CB2E8;
        if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
        v7 = qword_2A18CB2E8;
        if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }

      v8 = *MEMORY[0x29EDBF8E8];
      if (a1[23] >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      v10 = &v29;
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v29.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = v9;
      *&buf[22] = 2080;
      v31 = v10;
      _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "[ipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
    }

LABEL_57:
    v24 = 0;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_25:
  v28 = -1431655766;
  v11 = util::convert<int>(&v29, &v28, 0);
  if (v28 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
    goto LABEL_57;
  }

  v13 = *MEMORY[0x29EDBF8E8];
  v14 = strlen(*MEMORY[0x29EDBF8E8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v14 | 7) + 1;
    }

    v16 = operator new(v23);
    *&buf[8] = v15;
    *&buf[16] = v23 | 0x8000000000000000;
    *buf = v16;
  }

  else
  {
    buf[23] = v14;
    v16 = buf;
    if (!v14)
    {
      goto LABEL_49;
    }
  }

  memmove(v16, v13, v15);
LABEL_49:
  v16[v15] = 0;
  v22 = prop::file::set<int>(buf, a1, &v28);
LABEL_50:
  v24 = v22;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_58;
    }
  }

  else if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_58:
    operator delete(v29.__r_.__value_.__l.__data_);
    v27 = *MEMORY[0x29EDCA608];
    return v24;
  }

LABEL_52:
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

void sub_297608648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t prop::bbipc::set(char *a1, char *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  memset(&v31, 170, sizeof(v31));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v31 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbipc::get(a1, &v31))
  {
    goto LABEL_64;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBE7A0]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v30 = -1431655766;
      if (!util::convert<int>(&v31, &v30, 0))
      {
        goto LABEL_64;
      }

      v10 = *MEMORY[0x29EDBE7A8];
      v11 = strlen(*MEMORY[0x29EDBE7A8]);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v11 | 7) + 1;
        }

        v13 = operator new(v24);
        *&buf[8] = v12;
        *&buf[16] = v24 | 0x8000000000000000;
        *buf = v13;
      }

      else
      {
        buf[23] = v11;
        v13 = buf;
        if (!v11)
        {
          goto LABEL_50;
        }
      }

      memmove(v13, v10, v12);
LABEL_50:
      v13[v12] = 0;
      v23 = prop::file::set<int>(buf, a1, &v30);
      goto LABEL_57;
    }

LABEL_29:
    LOBYTE(v30) = -86;
    if (!util::convert<BOOL>(&v31, &v30, 0))
    {
      goto LABEL_64;
    }

    v14 = *MEMORY[0x29EDBE7A8];
    v15 = strlen(*MEMORY[0x29EDBE7A8]);
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v15 | 7) + 1;
      }

      v17 = operator new(v22);
      *&buf[8] = v16;
      *&buf[16] = v22 | 0x8000000000000000;
      *buf = v17;
    }

    else
    {
      buf[23] = v15;
      v17 = buf;
      if (!v15)
      {
        goto LABEL_44;
      }
    }

    memmove(v17, v14, v16);
LABEL_44:
    v17[v16] = 0;
    v23 = prop::file::set<BOOL>(buf, a1, &v30);
    goto LABEL_57;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBE7A0]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBEA38]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }
    }

    v7 = *MEMORY[0x29EDBE7A8];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v31;
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v31.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v33 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[bbipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_64:
    v26 = 0;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  v30 = -1431655766;
  if (!util::convert<unsigned int>(&v31, &v30))
  {
    goto LABEL_64;
  }

  v18 = *MEMORY[0x29EDBE7A8];
  v19 = strlen(*MEMORY[0x29EDBE7A8]);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v19 | 7) + 1;
    }

    v21 = operator new(v25);
    *&buf[8] = v20;
    *&buf[16] = v25 | 0x8000000000000000;
    *buf = v21;
  }

  else
  {
    buf[23] = v19;
    v21 = buf;
    if (!v19)
    {
      goto LABEL_56;
    }
  }

  memmove(v21, v18, v20);
LABEL_56:
  v21[v20] = 0;
  v23 = prop::file::set<unsigned int>(buf, a1, &v30);
LABEL_57:
  v26 = v23;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_65;
    }
  }

  else if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_65:
    operator delete(v31.__r_.__value_.__l.__data_);
    v29 = *MEMORY[0x29EDCA608];
    return v26;
  }

LABEL_59:
  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

void sub_297608B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t prop::compression::set(char *a1, char *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  memset(&v27, 170, sizeof(v27));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v27 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::compression::get(a1, &v27))
  {
    goto LABEL_46;
  }

LABEL_9:
  v5 = a1[23];
  v6 = *a1;
  if (v5 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (strcasecmp(v7, *MEMORY[0x29EDBD4A0]))
  {
    v8 = 0;
    goto LABEL_28;
  }

  v26 = 0;
  if (util::convert<int>(&v27, &v26, 0))
  {
    v9 = *MEMORY[0x29EDBE7B0];
    v10 = strlen(*MEMORY[0x29EDBE7B0]);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
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

      v12 = operator new(v13);
      *&__dst[8] = v11;
      *&__dst[16] = v13 | 0x8000000000000000;
      *__dst = v12;
    }

    else
    {
      __dst[23] = v10;
      v12 = __dst;
      if (!v10)
      {
LABEL_25:
        v12[v11] = 0;
        v8 = prop::file::set<int>(__dst, a1, &v26);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_27;
      }
    }

    memmove(v12, v9, v11);
    goto LABEL_25;
  }

  v8 = 0;
LABEL_27:
  LOBYTE(v5) = a1[23];
  v6 = *a1;
LABEL_28:
  if ((v5 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = v6;
  }

  if (!strcasecmp(v14, *MEMORY[0x29EDBD340]))
  {
    LOBYTE(v26) = 1;
    if (util::convert<BOOL>(&v27, &v26, 0))
    {
      v19 = *MEMORY[0x29EDBE7B0];
      v20 = strlen(*MEMORY[0x29EDBE7B0]);
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
        *&__dst[8] = v21;
        *&__dst[16] = v23 | 0x8000000000000000;
        *__dst = v22;
      }

      else
      {
        __dst[23] = v20;
        v22 = __dst;
        if (!v20)
        {
LABEL_52:
          v22[v21] = 0;
          v8 = prop::file::set<BOOL>(__dst, a1, &v26);
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          goto LABEL_54;
        }
      }

      memmove(v22, v19, v21);
      goto LABEL_52;
    }

LABEL_46:
    v8 = 0;
    goto LABEL_54;
  }

  if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
  {
    qword_2A18CB2E0 = 0;
    qword_2A18CB2E8 = 0;
    __cxa_guard_release(&qword_2A18CB2D8);
  }

  if (_MergedGlobals_12 == -1)
  {
    v15 = qword_2A18CB2E8;
    if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
    v15 = qword_2A18CB2E8;
    if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  v16 = *MEMORY[0x29EDBE7B0];
  if (a1[23] >= 0)
  {
    v17 = a1;
  }

  else
  {
    v17 = *a1;
  }

  v18 = &v27;
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v27.__r_.__value_.__r.__words[0];
  }

  *__dst = 136315650;
  *&__dst[4] = v16;
  *&__dst[12] = 2080;
  *&__dst[14] = v17;
  *&__dst[22] = 2080;
  v29 = v18;
  _os_log_error_impl(&dword_297476000, v15, OS_LOG_TYPE_ERROR, "[compression] set: Invalid key; domain='%s' key='%s' value='%s'", __dst, 0x20u);
LABEL_54:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_297608FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t prop::ttr::set(char *a1, char *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v26, 170, sizeof(v26));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::ttr::get(a1, &v26))
  {
    goto LABEL_55;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    v5 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      goto LABEL_11;
    }

LABEL_22:
    v25 = -1431655766;
    v10 = util::convert<unsigned int>(&v26, &v25);
    if (v25 < 4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      goto LABEL_55;
    }

    v12 = *MEMORY[0x29EDBE718];
    v13 = strlen(*MEMORY[0x29EDBE718]);
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      if ((v13 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v13 | 7) + 1;
      }

      v15 = operator new(v19);
      *&buf[8] = v14;
      *&buf[16] = v19 | 0x8000000000000000;
      *buf = v15;
    }

    else
    {
      buf[23] = v13;
      v15 = buf;
      if (!v13)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_47;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_22;
  }

LABEL_11:
  if (strcasecmp(v5, *MEMORY[0x29EDBF2D0]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    v7 = *MEMORY[0x29EDBE718];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v26.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v28 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[ttr] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_55:
    v21 = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

  v25 = -1431655766;
  v16 = util::convert<unsigned int>(&v26, &v25);
  if (v25)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 1)
  {
    goto LABEL_55;
  }

  v12 = *MEMORY[0x29EDBE718];
  v18 = strlen(*MEMORY[0x29EDBE718]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v18 | 7) + 1;
    }

    v15 = operator new(v20);
    *&buf[8] = v14;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v15;
    goto LABEL_47;
  }

  buf[23] = v18;
  v15 = buf;
  if (v18)
  {
LABEL_47:
    memmove(v15, v12, v14);
  }

LABEL_48:
  v15[v14] = 0;
  v21 = prop::file::set<unsigned int>(buf, a1, &v25);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_56;
    }
  }

  else if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_56:
    operator delete(v26.__r_.__value_.__l.__data_);
    v24 = *MEMORY[0x29EDCA608];
    return v21;
  }

LABEL_50:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_297609440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t prop::logfilter::set(char *a1, char *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  memset(&v32, 170, sizeof(v32));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v32 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::logfilter::get(a1, &v32))
  {
    goto LABEL_69;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBEB40]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEDE8]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v31 = -1431655766;
      v10 = util::convert<int>(&v32, &v31, 0);
      if (v31 > -2)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_69;
      }

      v12 = *MEMORY[0x29EDBE528];
      v13 = strlen(*MEMORY[0x29EDBE528]);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v25 = 25;
        }

        else
        {
          v25 = (v13 | 7) + 1;
        }

        v15 = operator new(v25);
        *&buf[8] = v14;
        *&buf[16] = v25 | 0x8000000000000000;
        *buf = v15;
      }

      else
      {
        buf[23] = v13;
        v15 = buf;
        if (!v13)
        {
          goto LABEL_50;
        }
      }

LABEL_49:
      memmove(v15, v12, v14);
LABEL_50:
      v15[v14] = 0;
      v24 = prop::file::set<int>(buf, a1, &v31);
      goto LABEL_62;
    }

LABEL_32:
    v31 = -1431655766;
    v16 = util::convert<int>(&v32, &v31, 0);
    if (v31 > -2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 != 1)
    {
      goto LABEL_69;
    }

    v12 = *MEMORY[0x29EDBE528];
    v18 = strlen(*MEMORY[0x29EDBE528]);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v18;
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v18 | 7) + 1;
      }

      v15 = operator new(v23);
      *&buf[8] = v14;
      *&buf[16] = v23 | 0x8000000000000000;
      *buf = v15;
    }

    else
    {
      buf[23] = v18;
      v15 = buf;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEB40]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBEDE8]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBF810]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }
    }

    v7 = *MEMORY[0x29EDBE528];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v32;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v32.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v34 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[logfilter] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_69:
    v27 = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_70;
    }

    goto LABEL_64;
  }

  LOBYTE(v31) = 1;
  if (!util::convert<BOOL>(&v32, &v31, 0))
  {
    goto LABEL_69;
  }

  v19 = *MEMORY[0x29EDBE528];
  v20 = strlen(*MEMORY[0x29EDBE528]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v20 | 7) + 1;
    }

    v22 = operator new(v26);
    *&buf[8] = v21;
    *&buf[16] = v26 | 0x8000000000000000;
    *buf = v22;
  }

  else
  {
    buf[23] = v20;
    v22 = buf;
    if (!v20)
    {
      goto LABEL_61;
    }
  }

  memmove(v22, v19, v21);
LABEL_61:
  v22[v21] = 0;
  v24 = prop::file::set<BOOL>(buf, a1, &v31);
LABEL_62:
  v27 = v24;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_70;
    }
  }

  else if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_70:
    operator delete(v32.__r_.__value_.__l.__data_);
    v30 = *MEMORY[0x29EDCA608];
    return v27;
  }

LABEL_64:
  v28 = *MEMORY[0x29EDCA608];
  return v27;
}

void sub_297609998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t prop::systemlogs::set(char *a1, char *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(&v35, 170, sizeof(v35));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v35 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::systemlogs::get(a1, &v35))
  {
    goto LABEL_74;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v34 = -1431655766;
      v10 = util::convert<int>(&v35, &v34, 0);
      if (v34 > 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_74;
      }

      v12 = *MEMORY[0x29EDBE710];
      v13 = strlen(*MEMORY[0x29EDBE710]);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v26 = 25;
        }

        else
        {
          v26 = (v13 | 7) + 1;
        }

        v15 = operator new(v26);
        *&buf[8] = v14;
        *&buf[16] = v26 | 0x8000000000000000;
        *buf = v15;
      }

      else
      {
        buf[23] = v13;
        v15 = buf;
        if (!v13)
        {
          goto LABEL_54;
        }
      }

      memmove(v15, v12, v14);
LABEL_54:
      v15[v14] = 0;
      v27 = prop::file::set<int>(buf, a1, &v34);
      goto LABEL_67;
    }

LABEL_32:
    v34 = -1431655766;
    if (TelephonyUtilIsInternalBuild())
    {
      IsCarrierBuild = 1;
    }

    else
    {
      IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    }

    if (!util::convert<unsigned int>(&v35, &v34))
    {
      goto LABEL_74;
    }

    v17 = IsCarrierBuild ? 3 : 2;
    if (v34 >= v17)
    {
      goto LABEL_74;
    }

    v18 = *MEMORY[0x29EDBE710];
    v19 = strlen(*MEMORY[0x29EDBE710]);
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      if ((v19 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v19 | 7) + 1;
      }

      v21 = operator new(v28);
      *&buf[8] = v20;
      *&buf[16] = v28 | 0x8000000000000000;
      *buf = v21;
    }

    else
    {
      buf[23] = v19;
      v21 = buf;
      if (!v19)
      {
        goto LABEL_60;
      }
    }

    memmove(v21, v18, v20);
LABEL_60:
    v21[v20] = 0;
    v27 = prop::file::set<unsigned int>(buf, a1, &v34);
    goto LABEL_67;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBE6E8]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBF0A8]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    v7 = *MEMORY[0x29EDBE710];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v35;
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v35.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v37 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[systemlogs] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_74:
    v30 = 0;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_75;
    }

    goto LABEL_69;
  }

  LOBYTE(v34) = -86;
  if (!util::convert<BOOL>(&v35, &v34, 0))
  {
    goto LABEL_74;
  }

  v22 = *MEMORY[0x29EDBE710];
  v23 = strlen(*MEMORY[0x29EDBE710]);
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v23 | 7) + 1;
    }

    v25 = operator new(v29);
    *&buf[8] = v24;
    *&buf[16] = v29 | 0x8000000000000000;
    *buf = v25;
  }

  else
  {
    buf[23] = v23;
    v25 = buf;
    if (!v23)
    {
      goto LABEL_66;
    }
  }

  memmove(v25, v22, v24);
LABEL_66:
  v25[v24] = 0;
  v27 = prop::file::set<BOOL>(buf, a1, &v34);
LABEL_67:
  v30 = v27;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_75;
    }
  }

  else if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_75:
    operator delete(v35.__r_.__value_.__l.__data_);
    v33 = *MEMORY[0x29EDCA608];
    return v30;
  }

LABEL_69:
  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

void sub_297609F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::profile::set(char *a1, char *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v26, 170, sizeof(v26));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::profile::get(a1, &v26))
  {
    goto LABEL_51;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    v5 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE4C8]))
    {
      goto LABEL_11;
    }

LABEL_22:
    LOBYTE(v25) = -86;
    if (!util::convert<BOOL>(&v26, &v25, 0))
    {
      goto LABEL_51;
    }

    v10 = *MEMORY[0x29EDBE5B0];
    v11 = strlen(*MEMORY[0x29EDBE5B0]);
    if (v11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v11 | 7) + 1;
      }

      v13 = operator new(v18);
      *&buf[8] = v12;
      *&buf[16] = v18 | 0x8000000000000000;
      *buf = v13;
    }

    else
    {
      buf[23] = v11;
      v13 = buf;
      if (!v11)
      {
        goto LABEL_37;
      }
    }

    memmove(v13, v10, v12);
LABEL_37:
    v13[v12] = 0;
    v19 = prop::file::set<BOOL>(buf, a1, &v25);
    goto LABEL_44;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE4C8]))
  {
    goto LABEL_22;
  }

LABEL_11:
  if (strcasecmp(v5, *MEMORY[0x29EDBF7D0]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }
    }

    v7 = *MEMORY[0x29EDBE5B0];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v26.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v28 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[profile] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_51:
    v21 = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

  v25 = -1431655766;
  if (!util::convert<int>(&v26, &v25, 0))
  {
    goto LABEL_51;
  }

  v14 = *MEMORY[0x29EDBE5B0];
  v15 = strlen(*MEMORY[0x29EDBE5B0]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&buf[8] = v16;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v17;
  }

  else
  {
    buf[23] = v15;
    v17 = buf;
    if (!v15)
    {
      goto LABEL_43;
    }
  }

  memmove(v17, v14, v16);
LABEL_43:
  v17[v16] = 0;
  v19 = prop::file::set<std::string>(buf, a1, &v26);
LABEL_44:
  v21 = v19;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_52;
    }
  }

  else if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_52:
    operator delete(v26.__r_.__value_.__l.__data_);
    v24 = *MEMORY[0x29EDCA608];
    return v21;
  }

LABEL_46:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_29760A370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t prop::tailspin::set(std::string::size_type a1, char *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(&v20, 170, sizeof(v20));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::tailspin::get(a1, &v20))
  {
    goto LABEL_39;
  }

LABEL_9:
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (strcasecmp(v5, *MEMORY[0x29EDBE4C8]))
  {
    if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
    {
      qword_2A18CB2E0 = 0;
      qword_2A18CB2E8 = 0;
      __cxa_guard_release(&qword_2A18CB2D8);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
      v6 = qword_2A18CB2E8;
      if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    v7 = *MEMORY[0x29EDBE608];
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v22 = v9;
    _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "[tailspin] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_39:
    v15 = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v19 = -86;
  if (!util::convert<BOOL>(&v20, &v19, 0))
  {
    goto LABEL_39;
  }

  v10 = *MEMORY[0x29EDBE608];
  v11 = strlen(*MEMORY[0x29EDBE608]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
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
    *&buf[8] = v12;
    *&buf[16] = v14 | 0x8000000000000000;
    *buf = v13;
    goto LABEL_31;
  }

  buf[23] = v11;
  v13 = buf;
  if (v11)
  {
LABEL_31:
    memmove(v13, v10, v12);
  }

  v13[v12] = 0;
  v15 = prop::file::set<BOOL>(buf, a1, &v19);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }
  }

  else if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_40:
    operator delete(v20.__r_.__value_.__l.__data_);
    v18 = *MEMORY[0x29EDCA608];
    return v15;
  }

LABEL_34:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_29760A6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

uint64_t prop::tracesettings::set(char *a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  memset(&v28, 170, sizeof(v28));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  if (a1[23] < 0)
  {
    v3 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBEF68]))
    {
      if (strcasecmp(v3, *MEMORY[0x29EDBF098]))
      {
        if (strcasecmp(v3, *MEMORY[0x29EDBEA40]))
        {
LABEL_8:
          if (strcasecmp(v3, *MEMORY[0x29EDBEDD0]))
          {
            if ((atomic_load_explicit(&qword_2A18CB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB2D8))
            {
              qword_2A18CB2E0 = 0;
              qword_2A18CB2E8 = 0;
              __cxa_guard_release(&qword_2A18CB2D8);
            }

            if (_MergedGlobals_12 == -1)
            {
              v4 = qword_2A18CB2E8;
              if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_12, &__block_literal_global_11);
              v4 = qword_2A18CB2E8;
              if (!os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }
            }

            v5 = *MEMORY[0x29EDBE600];
            if (a1[23] >= 0)
            {
              v6 = a1;
            }

            else
            {
              v6 = *a1;
            }

            v7 = &v28;
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v7 = v28.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = v5;
            *&buf[12] = 2080;
            *&buf[14] = v6;
            *&buf[22] = 2080;
            v30 = v7;
            _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "[tracesettings] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_68:
            v23 = 0;
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_69;
            }

            goto LABEL_63;
          }

          v27 = -1431655766;
          if (!util::convert<int>(&v28, &v27, 0))
          {
            goto LABEL_68;
          }

          v12 = *MEMORY[0x29EDBE600];
          v20 = strlen(*MEMORY[0x29EDBE600]);
          if (v20 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v14 = v20;
          if (v20 >= 0x17)
          {
            if ((v20 | 7) == 0x17)
            {
              v22 = 25;
            }

            else
            {
              v22 = (v20 | 7) + 1;
            }

            v15 = operator new(v22);
            *&buf[8] = v14;
            *&buf[16] = v22 | 0x8000000000000000;
            *buf = v15;
          }

          else
          {
            buf[23] = v20;
            v15 = buf;
            if (!v20)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_59;
        }

LABEL_21:
        v8 = *MEMORY[0x29EDBE600];
        v9 = strlen(*MEMORY[0x29EDBE600]);
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v10 = v9;
        if (v9 >= 0x17)
        {
          if ((v9 | 7) == 0x17)
          {
            v21 = 25;
          }

          else
          {
            v21 = (v9 | 7) + 1;
          }

          v11 = operator new(v21);
          *&buf[8] = v10;
          *&buf[16] = v21 | 0x8000000000000000;
          *buf = v11;
        }

        else
        {
          buf[23] = v9;
          v11 = buf;
          if (!v9)
          {
            goto LABEL_39;
          }
        }

LABEL_38:
        memmove(v11, v8, v10);
LABEL_39:
        v11[v10] = 0;
        v18 = prop::file::set<std::string>(buf, a1, &v28);
        goto LABEL_61;
      }

LABEL_30:
      v8 = *MEMORY[0x29EDBE600];
      v16 = strlen(*MEMORY[0x29EDBE600]);
      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v16;
      if (v16 >= 0x17)
      {
        if ((v16 | 7) == 0x17)
        {
          v17 = 25;
        }

        else
        {
          v17 = (v16 | 7) + 1;
        }

        v11 = operator new(v17);
        *&buf[8] = v10;
        *&buf[16] = v17 | 0x8000000000000000;
        *buf = v11;
      }

      else
      {
        buf[23] = v16;
        v11 = buf;
        if (!v16)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_38;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBEF68]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBF098]))
    {
      v3 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEA40]))
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v27 = -1431655766;
  if (!util::convert<int>(&v28, &v27, 0))
  {
    goto LABEL_68;
  }

  v12 = *MEMORY[0x29EDBE600];
  v13 = strlen(*MEMORY[0x29EDBE600]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v13 | 7) + 1;
    }

    v15 = operator new(v19);
    *&buf[8] = v14;
    *&buf[16] = v19 | 0x8000000000000000;
    *buf = v15;
  }

  else
  {
    buf[23] = v13;
    v15 = buf;
    if (!v13)
    {
      goto LABEL_60;
    }
  }

LABEL_59:
  memmove(v15, v12, v14);
LABEL_60:
  v15[v14] = 0;
  v18 = prop::file::set<int>(buf, a1, &v27);
LABEL_61:
  v23 = v18;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_69;
    }
  }

  else if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_69:
    operator delete(v28.__r_.__value_.__l.__data_);
    v26 = *MEMORY[0x29EDCA608];
    return v23;
  }

LABEL_63:
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

void sub_29760AC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  if (!xmmword_2A18CAF18)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E43EE0;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v23;
    *(&xmmword_2A18CAF18 + 1) = v22;
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

  v22 = *(&xmmword_2A18CAF18 + 1);
  LODWORD(v23) = xmmword_2A18CAF18;
  v30 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
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

void sub_29760B044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
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
  if (!xmmword_2A18CAF18)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E43EE0;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v23;
    *(&xmmword_2A18CAF18 + 1) = v22;
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

  v22 = *(&xmmword_2A18CAF18 + 1);
  LODWORD(v23) = xmmword_2A18CAF18;
  v30 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
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

void sub_29760B4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
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
  if (!xmmword_2A18CAF18)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E43EE0;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v23;
    *(&xmmword_2A18CAF18 + 1) = v22;
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

  v22 = *(&xmmword_2A18CAF18 + 1);
  LODWORD(v23) = xmmword_2A18CAF18;
  v30 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
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

void sub_29760B8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
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
  if (!xmmword_2A18CAF18)
  {
    v21 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v21, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v30.__r_.__value_.__r.__words[0] = v21;
    v20 = operator new(0x20uLL);
    *v20 = &unk_2A1E43EE0;
    v20[1] = 0;
    v20[2] = 0;
    v20[3] = v21;
    v22 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v21;
    *(&xmmword_2A18CAF18 + 1) = v20;
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

  v20 = *(&xmmword_2A18CAF18 + 1);
  LODWORD(v21) = xmmword_2A18CAF18;
  v28 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
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

void sub_29760BD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
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

uint64_t sub_29760C020(void *a1)
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

void sub_29760C0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_29760C408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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
  if (!xmmword_2A18CAF18)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v30 = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E43EE0;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v23;
    *(&xmmword_2A18CAF18 + 1) = v22;
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

  v22 = *(&xmmword_2A18CAF18 + 1);
  v23 = xmmword_2A18CAF18;
  *&v28.__r_.__value_.__l.__data_ = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
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

  MEMORY[0x29C270E70](&v30);
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

void sub_29760C9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
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

uint64_t AccessorySimulatorDelegate::create@<X0>(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v6 = operator new(0x80uLL);
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

  AccessorySimulatorDelegate::AccessorySimulatorDelegate(v6, v19, &v16);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E4C588;
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

void sub_29760CD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t AccessorySimulatorDelegate::AccessorySimulatorDelegate(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v13 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E4C4F0;
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

  *a1 = &unk_2A1E4C4F0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29760CF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(&a10);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::~AccessorySimulatorDelegate(AccessorySimulatorDelegate *this)
{
  *this = &unk_2A1E4C4F0;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E4C4F0;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E4C4F0;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);

  operator delete(v5);
}

uint64_t AccessorySimulatorDelegate::handleServerCommand(uint64_t a1, const void **a2, void **a3)
{
  v6 = *MEMORY[0x29EDBF790];
  v7 = strlen(*MEMORY[0x29EDBF790]);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_59:
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
    v36 = v8;
    v37 = v10 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v37) = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_9:
    memmove(p_dst, v6, v8);
  }

  v11 = 0;
  *(p_dst + v8) = 0;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = a2[1];
  }

  v14 = HIBYTE(v37);
  v15 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v14 = v36;
  }

  if (v13 == v14)
  {
    if (v12 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v37 >= 0)
    {
      v17 = &__dst;
    }

    else
    {
      v17 = __dst;
    }

    v11 = memcmp(v16, v17, v13) == 0;
    if ((v15 & 0x80000000) == 0)
    {
LABEL_17:
      if (!v11)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(__dst);
  if (!v11)
  {
    goto LABEL_31;
  }

LABEL_27:
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 1174405120;
  v33[2] = ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke;
  v33[3] = &__block_descriptor_tmp_39;
  v18 = *a3;
  v33[4] = a1;
  object = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped((a1 + 8), v33);
  xpc_release(object);
  object = 0;
LABEL_31:
  v19 = *MEMORY[0x29EDBF758];
  v20 = strlen(*MEMORY[0x29EDBF758]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_59;
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
    v36 = v21;
    v37 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_39;
  }

  HIBYTE(v37) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_39:
    memmove(v22, v19, v21);
  }

  v24 = 0;
  *(v22 + v21) = 0;
  v25 = *(a2 + 23);
  if (v25 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = a2[1];
  }

  v27 = HIBYTE(v37);
  v28 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v27 = v36;
  }

  if (v26 != v27)
  {
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_57:
    operator delete(__dst);
    if (!v24)
    {
      return v11;
    }

    goto LABEL_48;
  }

  if (v25 >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = *a2;
  }

  if (v37 >= 0)
  {
    v31 = &__dst;
  }

  else
  {
    v31 = __dst;
  }

  v24 = memcmp(v30, v31, v26) == 0;
  if (v28 < 0)
  {
    goto LABEL_57;
  }

LABEL_47:
  if (v24)
  {
LABEL_48:
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 0x40000000;
    v32[2] = ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke_3;
    v32[3] = &__block_descriptor_tmp_4;
    v32[4] = a1;
    ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped((a1 + 8), v32);
    return 1;
  }

  return v11;
}

void ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  v68 = 0;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = abm::AccessoryInfo::create();
  v5 = v4;
  xpc_release(object);
  object = 0;
  v6 = v3;
  v7 = *(v2 + 96);
  if ((v3 & 0xFFFF0000) != 0x10000)
  {
    if (v7)
    {
      v10 = vcnt_s8(v7);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v3;
        if (v7 <= v3)
        {
          v11 = v3 % *(v2 + 96);
        }
      }

      else
      {
        v11 = (v7 - 1) & v3;
      }

      v19 = *(*(v2 + 88) + 8 * v11);
      if (v19)
      {
        v20 = *v19;
        if (*v19)
        {
          if (v10.u32[0] < 2uLL)
          {
            while (1)
            {
              v22 = *(v20 + 1);
              if (v22 == v3)
              {
                if (v20[8] == v3)
                {
                  goto LABEL_54;
                }
              }

              else if ((v22 & (v7 - 1)) != v11)
              {
                goto LABEL_48;
              }

              v20 = *v20;
              if (!v20)
              {
                goto LABEL_48;
              }
            }
          }

          do
          {
            v21 = *(v20 + 1);
            if (v21 == v3)
            {
              if (v20[8] == v3)
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v21 >= v7)
              {
                v21 %= v7;
              }

              if (v21 != v11)
              {
                break;
              }
            }

            v20 = *v20;
          }

          while (v20);
        }
      }
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
    }

LABEL_48:
    v20 = operator new(0x20uLL);
    *v20 = 0;
    *(v20 + 1) = v3;
    v20[8] = v3;
    v20[9] = -1;
    *(v20 + 10) = 0;
    v20[14] = 0;
    v23 = (*(v2 + 112) + 1);
    v24 = *(v2 + 120);
    if (v7 && (v24 * v7) >= v23)
    {
      v25 = *(v2 + 88);
      v26 = *(v25 + 8 * v11);
      if (v26)
      {
LABEL_51:
        *v20 = *v26;
        goto LABEL_52;
      }

LABEL_126:
      *v20 = *(v2 + 104);
      *(v2 + 104) = v20;
      *(v25 + 8 * v11) = v2 + 104;
      if (!*v20)
      {
        goto LABEL_53;
      }

      v49 = *(*v20 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v49 >= v7)
        {
          v49 %= v7;
        }

        v26 = (v25 + 8 * v49);
      }

      else
      {
        v26 = (v25 + 8 * (v49 & (v7 - 1)));
      }

LABEL_52:
      *v26 = v20;
LABEL_53:
      ++*(v2 + 112);
LABEL_54:
      v18 = 0;
      *(v20 + 9) = v3;
      *(v20 + 13) = v5;
      goto LABEL_55;
    }

    v29 = 1;
    if (v7 >= 3)
    {
      v29 = (v7 & (v7 - 1)) != 0;
    }

    v30 = v29 | (2 * v7);
    v31 = vcvtps_u32_f32(v23 / v24);
    if (v30 <= v31)
    {
      prime = v31;
    }

    else
    {
      prime = v30;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v7 = *(v2 + 96);
    }

    if (prime > v7)
    {
LABEL_77:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = operator new(8 * prime);
      v34 = *(v2 + 88);
      *(v2 + 88) = v33;
      if (v34)
      {
        operator delete(v34);
        v33 = *(v2 + 88);
      }

      *(v2 + 96) = prime;
      bzero(v33, 8 * prime);
      v36 = v2 + 104;
      v35 = *(v2 + 104);
      if (!v35)
      {
        goto LABEL_107;
      }

      v37 = v35[1];
      v38 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v39 = v37 & v38;
        *(v33 + v39) = v36;
        for (i = *v35; *v35; i = *v35)
        {
          v41 = i[1] & v38;
          if (v41 == v39)
          {
            v35 = i;
          }

          else if (*(v33 + v41))
          {
            *v35 = *i;
            *i = **(v33 + v41);
            **(v33 + v41) = i;
          }

          else
          {
            *(v33 + v41) = v35;
            v35 = i;
            v39 = v41;
          }
        }

        goto LABEL_107;
      }

      if (v37 >= prime)
      {
        v37 %= prime;
      }

      *(v33 + v37) = v36;
      v45 = *v35;
      if (!*v35)
      {
LABEL_107:
        v7 = prime;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_108;
        }

        goto LABEL_125;
      }

      while (1)
      {
        v46 = v45[1];
        if (v46 >= prime)
        {
          v46 %= prime;
        }

        if (v46 == v37)
        {
          goto LABEL_101;
        }

        if (*(v33 + v46))
        {
          *v35 = *v45;
          *v45 = **(v33 + v46);
          **(v33 + v46) = v45;
          v45 = v35;
LABEL_101:
          v35 = v45;
          v45 = *v45;
          if (!v45)
          {
            goto LABEL_107;
          }
        }

        else
        {
          *(v33 + v46) = v35;
          v35 = v45;
          v45 = *v45;
          v37 = v46;
          if (!v45)
          {
            goto LABEL_107;
          }
        }
      }
    }

    if (prime < v7)
    {
      v42 = vcvtps_u32_f32(*(v2 + 112) / *(v2 + 120));
      if (v7 < 3 || (v43 = vcnt_s8(v7), v43.i16[0] = vaddlv_u8(v43), v43.u32[0] > 1uLL))
      {
        v42 = std::__next_prime(v42);
      }

      else
      {
        v44 = 1 << -__clz(v42 - 1);
        if (v42 >= 2)
        {
          v42 = v44;
        }
      }

      if (prime <= v42)
      {
        prime = v42;
      }

      if (prime < v7)
      {
        if (!prime)
        {
          v48 = *(v2 + 88);
          *(v2 + 88) = 0;
          if (v48)
          {
            operator delete(v48);
          }

          v7 = 0;
          *(v2 + 96) = 0;
          goto LABEL_125;
        }

        goto LABEL_77;
      }

      v7 = *(v2 + 96);
    }

    if ((v7 & (v7 - 1)) != 0)
    {
LABEL_108:
      if (v7 <= v3)
      {
        v11 = v3 % v7;
        v25 = *(v2 + 88);
        v26 = *(v25 + 8 * v11);
        if (v26)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v11 = v3;
        v25 = *(v2 + 88);
        v26 = *(v25 + 8 * v3);
        if (v26)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_126;
    }

LABEL_125:
    v11 = (v7 - 1) & v3;
    v25 = *(v2 + 88);
    v26 = *(v25 + 8 * v11);
    if (v26)
    {
      goto LABEL_51;
    }

    goto LABEL_126;
  }

  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v3;
    if (v7 <= v3)
    {
      v9 = v3 % *(v2 + 96);
    }
  }

  else
  {
    v9 = (v7 - 1) & v3;
  }

  v12 = *(v2 + 88);
  v13 = *(v12 + 8 * v9);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_29:
    __p = operator new(0x48uLL);
    v65 = xmmword_2976A54A0;
    strcpy(__p, "Invalid AccessoryID, could not find in cached accessory dictionary");
    (*(*v2 + 48))(&cf, v2, &__p, 5);
    v18 = cf;
    v68 = cf;
    cf = 0;
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_55;
  }

  v15 = v7 - 1;
  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = v14[1];
      if (v16 == v3)
      {
        if (*(v14 + 8) == v3)
        {
          goto LABEL_113;
        }
      }

      else if ((v16 & v15) != v9)
      {
        goto LABEL_29;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v3)
    {
      break;
    }

    if (v17 >= v7)
    {
      v17 %= v7;
    }

    if (v17 != v9)
    {
      goto LABEL_29;
    }

LABEL_24:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_29;
    }
  }

  if (*(v14 + 8) != v3)
  {
    goto LABEL_24;
  }

LABEL_113:
  if (v8.u32[0] > 1uLL)
  {
    v47 = v3;
    if (v7 <= v3)
    {
      v47 = v3 % *(v2 + 96);
    }
  }

  else
  {
    v47 = (v7 - 1) & v3;
  }

  v50 = *(v12 + 8 * v47);
  if (!v50 || (v51 = *v50) == 0)
  {
LABEL_149:
    v18 = 0;
    goto LABEL_55;
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v52 = v51[1];
      if (v52 == v3)
      {
        if (*(v51 + 8) == v3)
        {
          goto LABEL_150;
        }
      }

      else if ((v52 & v15) != v47)
      {
        goto LABEL_149;
      }

      v18 = 0;
      v51 = *v51;
      if (!v51)
      {
        goto LABEL_55;
      }
    }
  }

  while (2)
  {
    v53 = v51[1];
    if (v53 != v3)
    {
      if (v53 >= v7)
      {
        v53 %= v7;
      }

      if (v53 != v47)
      {
        goto LABEL_149;
      }

      goto LABEL_144;
    }

    if (*(v51 + 8) != v3)
    {
LABEL_144:
      v18 = 0;
      v51 = *v51;
      if (!v51)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

LABEL_150:
  if (v8.u32[0] > 1uLL)
  {
    if (v7 <= v3)
    {
      v6 = v3 % v7;
    }
  }

  else
  {
    v6 = v15 & v3;
  }

  v54 = *(v12 + 8 * v6);
  do
  {
    v55 = v54;
    v54 = *v54;
  }

  while (v54 != v51);
  if (v55 == (v2 + 104))
  {
    goto LABEL_167;
  }

  v56 = v55[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v56 >= v7)
    {
      v56 %= v7;
    }
  }

  else
  {
    v56 &= v15;
  }

  if (v56 != v6)
  {
LABEL_167:
    if (!*v51)
    {
      goto LABEL_168;
    }

    v57 = *(*v51 + 8);
    if (v8.u32[0] > 1uLL)
    {
      if (v57 >= v7)
      {
        v57 %= v7;
      }
    }

    else
    {
      v57 &= v15;
    }

    if (v57 != v6)
    {
LABEL_168:
      *(v12 + 8 * v6) = 0;
    }
  }

  v58 = *v51;
  if (*v51)
  {
    v59 = *(v58 + 8);
    if (v8.u32[0] > 1uLL)
    {
      if (v59 >= v7)
      {
        v59 %= v7;
      }
    }

    else
    {
      v59 &= v15;
    }

    if (v59 != v6)
    {
      *(v12 + 8 * v59) = v55;
      v58 = *v51;
    }
  }

  *v55 = v58;
  *v51 = 0;
  --*(v2 + 112);
  operator delete(v51);
  v18 = 0;
LABEL_55:
  if (*(v2 + 80) == 1 && *(v2 + 72))
  {
    v63 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v27 = operator new(0xCuLL);
    v61 = v27 + 3;
    v62 = (v27 + 3);
    *v27 = v3;
    v27[2] = v5;
    v60 = v27;
    v28 = *(v2 + 72);
    if (!v28)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v28 + 48))(v28, &v63, &v60);
    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v63)
    {
      CFRelease(v63);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_29760DCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_29760DCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18)
{
  operator delete(v18);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

void sub_29760DCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t object, const void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a21);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a21);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80) == 1)
  {
    v2 = *(v1 + 104);
    if (v2)
    {
      v3 = *(v1 + 72);
      if (v3)
      {
        *(v2 + 10) = 1;
LABEL_5:
        v8 = *(v2 + 18);
        v9 = *(v2 + 26);
        __p = 0;
        v11 = 0;
        v12 = 0;
        cf = 0;
        v4 = operator new(0xCuLL);
        v11 = v4 + 3;
        v12 = (v4 + 3);
        *v4 = v8;
        v4[2] = v9;
        __p = v4;
        (*(*v3 + 48))(v3, &cf, &__p);
        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        while (1)
        {
          v2 = *v2;
          if (!v2)
          {
            break;
          }

          v3 = *(v1 + 72);
          *(v2 + 10) = 1;
          if (v3)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        do
        {
          *(v2 + 10) = 1;
          v2 = *v2;
        }

        while (v2);
      }
    }
  }

  if (*(v1 + 112))
  {
    v5 = *(v1 + 104);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(v1 + 104) = 0;
    v7 = *(v1 + 96);
    if (v7)
    {
      bzero(*(v1 + 88), 8 * v7);
    }

    *(v1 + 112) = 0;
  }
}

void sub_29760DF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_29760DFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::start(AccessorySimulatorDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN26AccessorySimulatorDelegate5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_5_1;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN26AccessorySimulatorDelegate5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already started", &v8, 2u);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting", &v8, 2u);
    }

    *(v1 + 80) = 1;
    v5 = *(v1 + 104);
    if (v5)
    {
      v6 = *(v1 + 72);
      if (v6)
      {
LABEL_8:
        v8 = *(v5 + 18);
        v9 = *(v5 + 26);
        __p = 0;
        v11 = 0;
        v12 = 0;
        cf = 0;
        v7 = operator new(0xCuLL);
        v11 = v7 + 3;
        v12 = (v7 + 3);
        *v7 = v8;
        v7[2] = v9;
        __p = v7;
        (*(*v6 + 48))(v6, &cf, &__p);
        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          v6 = *(v1 + 72);
          if (v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        do
        {
          v5 = *v5;
        }

        while (v5);
      }
    }
  }
}

void sub_29760E1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_29760E1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::stop(AccessorySimulatorDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN26AccessorySimulatorDelegate4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_6_2;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN26AccessorySimulatorDelegate4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
    }

    *(v1 + 80) = 0;
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already stopped", v5, 2u);
  }
}

void std::__shared_ptr_pointer<AccessorySimulatorDelegate *,std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate *)#1},std::allocator<AccessorySimulatorDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AccessorySimulatorDelegate *,std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate *)#1},std::allocator<AccessorySimulatorDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate*)#1}::operator() const(AccessorySimulatorDelegate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *GetOsLogContext(void)
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18CB080 = 0;
  }

  if (GetOsLogContext(void)::onceToken != -1)
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
  }

  return &GetOsLogContext(void)::sOsLogContext;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void PPMManager::create(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x28uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2A1E4C648;
  PPMManager::PPMManager((v3 + 3));
  *a1 = v4;
  a1[1] = v3;
}

void sub_29760E51C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void PPMManager::PPMManager(PPMManager *this)
{
  v15 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 1) = 0;
  v2 = operator new(0x28uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A1E4C5F8;
  v3 = (v2 + 3);
  ctu::OsLogLogger::OsLogLogger((v2 + 3), "com.apple.telephony", "ppm.hdlr");
  v2[4] = 0;
  v12 = 0;
  v4 = [MEMORY[0x29EDC91A0] sharedInstanceWithClientRepresentation:@"com.apple.duet.ppm-attr.bsbd" error:{&v12, v2 + 3, v2}];
  v5 = v12;
  v6 = v2[4];
  v2[4] = v4;

  if (v5 || !v2[4])
  {
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&__p, v5);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v14 = v8;
      _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Failed to get PPM instance: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v9 = *(this + 1);
  *this = v3;
  *(this + 1) = v2;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29760E75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void sub_29760E784(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void PPMManager::start(os_log_t **this)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *this;
  v2 = (*this)[1];
  v10 = 0;
  v3 = [v2 activityStartedWithLevel:&unk_2A1E51650 options:0 error:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if ((v5 & 1) == 0)
  {
    v6 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&__p, v4);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v12 = p_p;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Failed to set PPM activity started level: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void PPMManager::reportTelemetry(uint64_t *a1, xpc_object_t *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v3 = xpc_null_create();
  }

  if (MEMORY[0x29C272BA0](v3) != MEMORY[0x29EDCAA00])
  {
    goto LABEL_19;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  *object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::bridge(&cf, object, v4);
  v5 = cf.__r_.__value_.__r.__words[0];
  if (cf.__r_.__value_.__r.__words[0])
  {
    v6 = CFGetTypeID(cf.__r_.__value_.__l.__data_);
    if (v6 == CFDictionaryGetTypeID())
    {
      v15 = v5;
      CFRetain(v5);
      v7 = cf.__r_.__value_.__r.__words[0];
      if (!cf.__r_.__value_.__r.__words[0])
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v5 = 0;
  v15 = 0;
  v7 = cf.__r_.__value_.__r.__words[0];
  if (cf.__r_.__value_.__r.__words[0])
  {
LABEL_13:
    CFRelease(v7);
  }

LABEL_14:
  xpc_release(*object);
  v8 = *(v2 + 8);
  v14 = 0;
  [v8 pushTelemetryToPPM:v5 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = *v2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&cf, v9);
      v12 = (cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &cf : cf.__r_.__value_.__r.__words[0];
      *object = 136315138;
      *&object[4] = v12;
      _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Failed to report telemetry to PPM: %s", object, 0xCu);
      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_19:
  xpc_release(v3);
  v11 = *MEMORY[0x29EDCA608];
}

void sub_29760EABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void PPMManager::shutdown(PPMManager *this)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *this;
  v2 = *(*this + 8);
  v16 = 0;
  v3 = [v2 activityStoppedWithLevel:0 options:0 error:&v16];
  v4 = v16;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if ((v5 & 1) == 0)
  {
    v6 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&__p, v4);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v18 = v12;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Failed to set PPM activity stopped level: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v7 = *(v1 + 8);
  v14 = v4;
  [v7 endInteraction:&v14];
  v8 = v14;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3;
  }

  if ((v9 & 1) == 0)
  {
    v10 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
    {
      PPMHandler::getErrorMsg(&__p, v8);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v18 = p_p;
      _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Failed to end interaction: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void std::__shared_ptr_emplace<PPMHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E4C5F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<PPMHandler>::__on_zero_shared(uint64_t a1)
{

  JUMPOUT(0x29C270D60);
}

void PPMHandler::getErrorMsg(std::string *this, NSError *a2)
{
  v3 = a2;
  this->__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  this->__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  *(&this->__r_.__value_.__s + 23) = 13;
  strcpy(this, "Unknown error");
  if (v3)
  {
    v9 = v3;
    v4 = [(NSError *)v3 localizedDescription];
    v5 = [(NSError *)v9 localizedFailureReason];
    if (v5)
    {
      v6 = [(NSError *)v9 localizedFailureReason];
    }

    else
    {
      v7 = [MEMORY[0x29EDB9F48] mainBundle];
      v6 = [v7 localizedStringForKey:@"Not found localizedFailureReason" value:&stru_2A1E50838 table:0];
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@: %@", v4, v6];

    std::string::__assign_external(this, [v8 UTF8String]);
    v3 = v9;
  }
}

void sub_29760EF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v15;

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<PPMManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E4C648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<PPMManager>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t abm::ParseWakeDataIce(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C272BA0](*a1);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00])
  {
    return 0;
  }

  v6 = MEMORY[0x29C272BA0](*a2);
  if (v6 != v5)
  {
    return 0;
  }

  v8 = capabilities::radio::initium(v6);
  v9 = MEMORY[0x29EDBE7D0];
  if (!v8)
  {
    v9 = MEMORY[0x29EDBE7C8];
  }

  v10 = xpc_string_create(*v9);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE848], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = *MEMORY[0x29EDBEDA8];
  value = xpc_dictionary_get_value(*a1, *MEMORY[0x29EDBEDA8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v14 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  v15 = xpc_int64_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, v12, v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = *MEMORY[0x29EDBE9D0];
  v18 = xpc_dictionary_get_value(*a1, *MEMORY[0x29EDBE9D0]);
  if (v18)
  {
    v19 = v18;
    xpc_retain(v18);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v20 = MEMORY[0x29C272BA0](v19);
  v21 = MEMORY[0x29EDCAA40];
  if (v20 != MEMORY[0x29EDCAA40])
  {
    if (v19)
    {
      xpc_retain(v19);
      v22 = v19;
    }

    else
    {
      v22 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, v17, v22);
    v23 = xpc_null_create();
    xpc_release(v22);
    xpc_release(v23);
  }

  if (v14 <= 3)
  {
    switch(v14)
    {
      case 1:
        v33 = xpc_string_create(*MEMORY[0x29EDBEB90]);
        if (!v33)
        {
          v33 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v33);
        v34 = xpc_null_create();
        xpc_release(v33);
        xpc_release(v34);
        v26 = xpc_string_create(*MEMORY[0x29EDBF0D8]);
        if (!v26)
        {
          v26 = xpc_null_create();
        }

        goto LABEL_69;
      case 2:
        v43 = xpc_string_create(*MEMORY[0x29EDBEB90]);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v43);
        v44 = xpc_null_create();
        xpc_release(v43);
        xpc_release(v44);
        v26 = xpc_string_create(*MEMORY[0x29EDBEE40]);
        if (!v26)
        {
          v26 = xpc_null_create();
        }

        goto LABEL_69;
      case 3:
        v27 = xpc_string_create(*MEMORY[0x29EDBEE48]);
        if (!v27)
        {
          v27 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v27);
        v28 = xpc_null_create();
        xpc_release(v27);
        xpc_release(v28);
        v29 = xpc_string_create(*MEMORY[0x29EDBECD0]);
        if (!v29)
        {
          v29 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEDB0], v29);
        v30 = xpc_null_create();
        xpc_release(v29);
        xpc_release(v30);
        if (MEMORY[0x29C272BA0](v19) != v21)
        {
          v51 = v19;
          v52 = 0xAAAAAAAAAAAAAAAALL;
          if (v19)
          {
            xpc_retain(v19);
          }

          else
          {
            v51 = xpc_null_create();
          }

          abm::_ParseIceARI(&v52);
          xpc_release(v51);
          v51 = 0;
          xpc::dict::dict(&v49, &v52);
          v46 = *MEMORY[0x29EDBF190];
          object[0] = a2;
          object[1] = v46;
          xpc::dict::object_proxy::operator=(object, &v49, &v50);
          xpc_release(v50);
          v50 = 0;
          xpc_release(v49);
          v49 = 0;
          xpc_release(v52);
        }

        goto LABEL_74;
    }

    goto LABEL_51;
  }

  if (v14 > 5)
  {
    if (v14 == 6)
    {
      v38 = xpc_string_create(*MEMORY[0x29EDBEB98]);
      if (!v38)
      {
        v38 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v38);
      v39 = xpc_null_create();
      xpc_release(v38);
      xpc_release(v39);
      v41 = capabilities::radio::initium(v40);
      v42 = MEMORY[0x29EDBECC8];
      if (!v41)
      {
        v42 = MEMORY[0x29EDBECF0];
      }

      v26 = xpc_string_create(*v42);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      goto LABEL_69;
    }

    if (v14 == 7)
    {
      v31 = xpc_string_create(*MEMORY[0x29EDBEB90]);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v31);
      v32 = xpc_null_create();
      xpc_release(v31);
      xpc_release(v32);
      v26 = xpc_string_create(*MEMORY[0x29EDBECE0]);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      goto LABEL_69;
    }

LABEL_51:
    v35 = xpc_string_create(*MEMORY[0x29EDBEE50]);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v35);
    v36 = xpc_null_create();
    xpc_release(v35);
    xpc_release(v36);
    v26 = xpc_string_create(*MEMORY[0x29EDBF428]);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    goto LABEL_69;
  }

  if (v14 == 4)
  {
    v37 = *a1;
    v47 = v37;
    if (v37)
    {
      xpc_retain(v37);
    }

    else
    {
      v47 = xpc_null_create();
    }

    abm::ParseWakeDataIP(&v47, a2);
    xpc_release(v47);
    v47 = 0;
    goto LABEL_74;
  }

  v24 = xpc_string_create(*MEMORY[0x29EDBEA88]);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_string_create(*MEMORY[0x29EDBEDF8]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

LABEL_69:
  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEDB0], v26);
  v45 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v45);
LABEL_74:
  xpc_release(v19);
  return 1;
}

void sub_29760F848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void abm::_ParseIceARI(xpc_object_t *a1)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&value[1] = 0xAAAAAAAAAAAAAAAALL;
  __p = 0;
  v11 = 0;
  v12 = 0;
  xpc::dyn_cast_or_default();
  v5 = xpc_BOOL_create(1);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, *MEMORY[0x29EDBF6B8], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v8 = *&value[1];
  operator delete(*&value[1]);
}

void sub_29760FED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  xpc::dict::~dict(v19);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::create(NSObject **a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v6 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    v7 = operator new(1uLL);
    v8 = operator new(0x20uLL);
    *v8 = &unk_2A1E4FD98;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v7;
    v9 = off_2A18CAF70;
    unk_2A18CAF68 = v7;
    off_2A18CAF70 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = unk_2A18CAF68;
  }

  v10 = off_2A18CAF70;
  v17[0] = v6;
  v17[1] = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  isCMHandDetectionSupported = Capabilities::isCMHandDetectionSupported(v6);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v16 = isCMHandDetectionSupported;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_21:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  if ((isCMHandDetectionSupported & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x28uLL);
  v12[1] = 0;
  v12[2] = 0;
  *v12 = &unk_2A1E4C718;
  v13 = v12 + 3;
  v14 = *a1;
  v17[0] = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = *a2;
  v18 = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  CMHandDetectionDelegate::CMHandDetectionDelegate(v13, v17, &v18);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  *a3 = v13;
  a3[1] = v12;
}

void sub_2976101E4(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_297610210(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
    if (!v2)
    {
LABEL_3:
      std::__shared_weak_count::~__shared_weak_count(v3);
      operator delete(v5);
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  dispatch_release(v2);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void sub_297610258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *CMHandDetectionDelegate::CMHandDetectionDelegate(void *a1, dispatch_object_t *a2, NSObject **a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *a1 = 0;
  a1[1] = 0;
  if ([MEMORY[0x29EDB93A8] isCallHandednessAvailable])
  {
    v7 = operator new(0x40uLL);
    if (v5)
    {
      dispatch_retain(v5);
    }

    if (v6)
    {
      dispatch_retain(v6);
    }

    *v7 = 0;
    v7[1] = 0;
    v7[2] = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    v7[3] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7[4] = 0;
    v7[6] = 0;
    *(v7 + 56) = 0;
    v7[4] = objc_alloc_init(MEMORY[0x29EDB93A8]);
    v8 = operator new(0x20uLL);
    v9 = v8;
    v8[2] = 0;
    v8[1] = 0;
    *v8 = &unk_2A1E4C698;
    v8[3] = v7;
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v7 = v7;
    v7[1] = v8;
    if (!atomic_fetch_add(v8 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v8 + 16))(v8);
      std::__shared_weak_count::__release_weak(v9);
    }

    *a1 = v7;
    a1[1] = v9;
    if (v6)
    {
      dispatch_release(v6);
    }

    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  return a1;
}

void sub_2976103F8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler*)#1}::operator() const(CMHandDetectionHandler*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_297610420(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v3)
  {
    dispatch_release(v3);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  dispatch_release(v1);
LABEL_3:
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v2);
  if (v3)
  {
    dispatch_release(v3);
    if (!v1)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_5;
  }

  dispatch_release(v1);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::~CMHandDetectionDelegate(CMHandDetectionDelegate *this)
{
  v1 = *(this + 1);
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
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

uint64_t CMHandDetectionDelegate::isSupported(CMHandDetectionDelegate *this)
{
  if ((atomic_load_explicit(&qword_2A18CB2F8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A18CB2F8))
  {
    return _MergedGlobals_13;
  }

  pthread_mutex_lock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  v2 = unk_2A18CAF68;
  if (!unk_2A18CAF68)
  {
    Capabilities::create_default_global(&v6);
    std::shared_ptr<Capabilities>::operator=[abi:ne200100](&v6);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&v6);
    v2 = unk_2A18CAF68;
  }

  v4 = v2;
  v5 = off_2A18CAF70;
  if (off_2A18CAF70)
  {
    atomic_fetch_add_explicit(off_2A18CAF70 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  if (Capabilities::isCMHandDetectionSupported(v2))
  {
    v3 = [MEMORY[0x29EDB93A8] isCallHandednessAvailable];
  }

  else
  {
    v3 = 0;
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&v4);
  _MergedGlobals_13 = v3;
  __cxa_guard_release(&qword_2A18CB2F8);
  return _MergedGlobals_13;
}

void sub_2976106C4(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<Capabilities,Capabilities,ctu::PthreadMutexGuardPolicy<Capabilities>>::sInstance);
  __cxa_guard_abort(&qword_2A18CB2F8);
  _Unwind_Resume(a1);
}

void CMHandDetectionDelegate::registerCallback(uint64_t **a1, const void **a2)
{
  v2 = *a1;
  if (!*a2)
  {
    v4 = 0;
    v7 = *a1;
LABEL_6:
    v5 = 1;
    aBlock = 0;
    ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(v2, &v7);
    v6 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = _Block_copy(*a2);
  v4 = v3;
  v7 = v2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = 0;
  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(v2, &v7);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }

LABEL_8:
  if ((v5 & 1) == 0)
  {
    _Block_release(v4);
  }
}