void sub_297059514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,int>(__CFDictionary *a1, CFTypeRef cf, int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2970595C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2970595E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,BOOL>(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v6 = MEMORY[0x29EDB8EF8];
  }

  v7 = *v6;
  if (cf && v7)
  {
    CFDictionaryAddValue(theDict, cf, v7);
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  CFRelease(v7);
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_297059698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,unsigned short>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_29705975C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297059780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,unsigned char>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_297059834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297059858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,void const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2970598EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_297059910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_330()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void **BasebandTransport::getSupportedProtocols@<X0>(BasebandTransport *this@<X0>, void **a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  result = capabilities::radio::vendor(this);
  if (result > 2)
  {
    if (result == 3)
    {
      v53 = &v53;
      v54 = &v53;
      v55 = 0;
      v20 = operator new(0x18uLL);
      v20[4] = 8;
      *v20 = &v53;
      *(v20 + 1) = &v53;
      v53 = v20;
      v54 = v20;
      v55 = 1;
      v42 = operator new(0x18uLL);
      v42[4] = 17;
      *v42 = v20;
      *(v42 + 1) = &v53;
      *(v20 + 1) = v42;
      v53 = v42;
      v55 = 2;
      v43 = operator new(0x18uLL);
      v43[4] = 10;
      *v43 = v42;
      *(v43 + 1) = &v53;
      *(v42 + 1) = v43;
      v53 = v43;
      v55 = 3;
      v44 = operator new(0x18uLL);
      v44[4] = 14;
      *v44 = v43;
      *(v44 + 1) = &v53;
      *(v43 + 1) = v44;
      v53 = v44;
      v55 = 4;
      v45 = operator new(0x18uLL);
      v45[4] = 16;
      *v45 = v44;
      *(v45 + 1) = &v53;
      *(v44 + 1) = v45;
      v53 = v45;
      v55 = 5;
      result = operator new(0x18uLL);
      *(result + 4) = 18;
      v46 = &v53;
      *result = v45;
      result[1] = &v53;
      *(v45 + 1) = result;
      v19 = 6;
      v53 = result;
      v55 = 6;
      if (a2[2])
      {
        result = a2[1];
        v47 = *(*a2 + 1);
        v48 = *result;
        v48[1] = v47;
        *v47 = v48;
        a2[2] = 0;
        if (result == a2)
        {
          v19 = 6;
        }

        else
        {
          do
          {
            v49 = result[1];
            operator delete(result);
            result = v49;
          }

          while (v49 != a2);
          if (!v55)
          {
            return result;
          }

          v19 = a2[2] + v55;
        }

        result = v53;
        v20 = v54;
        v51 = v53[1];
        v46 = *v54;
      }

      else
      {
        v51 = &v53;
      }

      v46[1] = v51;
      *v51 = v46;
LABEL_36:
      v52 = *a2;
      v52[1] = v20;
      *v20 = v52;
      *a2 = result;
      result[1] = a2;
      goto LABEL_37;
    }

    if (result != 4)
    {
      return result;
    }

    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 10;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v21 = operator new(0x18uLL);
    v21[4] = 19;
    *v21 = v20;
    *(v21 + 1) = &v53;
    *(v20 + 1) = v21;
    v53 = v21;
    v55 = 2;
    v22 = operator new(0x18uLL);
    v22[4] = 20;
    *v22 = v21;
    *(v22 + 1) = &v53;
    *(v21 + 1) = v22;
    v53 = v22;
    v55 = 3;
    v23 = operator new(0x18uLL);
    v23[4] = 21;
    *v23 = v22;
    *(v23 + 1) = &v53;
    *(v22 + 1) = v23;
    v53 = v23;
    v55 = 4;
    v24 = operator new(0x18uLL);
    v24[4] = 22;
    *v24 = v23;
    *(v24 + 1) = &v53;
    *(v23 + 1) = v24;
    v53 = v24;
    v55 = 5;
    v25 = operator new(0x18uLL);
    v25[4] = 23;
    v26 = &v53;
    *v25 = v24;
    *(v25 + 1) = &v53;
    *(v24 + 1) = v25;
    v53 = v25;
    v55 = 6;
    result = operator new(0x18uLL);
    *(result + 4) = 24;
    *result = v25;
    result[1] = &v53;
    *(v25 + 1) = result;
    v19 = 7;
    v53 = result;
    v55 = 7;
    if (a2[2])
    {
      result = a2[1];
      v27 = *(*a2 + 1);
      v28 = *result;
      v28[1] = v27;
      *v27 = v28;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v29 = result[1];
          operator delete(result);
          result = v29;
        }

        while (v29 != a2);
        goto LABEL_20;
      }

      v19 = 7;
LABEL_34:
      result = v53;
      v20 = v54;
      v50 = v53[1];
      v26 = *v54;
      goto LABEL_35;
    }

LABEL_27:
    v50 = &v53;
LABEL_35:
    v26[1] = v50;
    *v50 = v26;
    goto LABEL_36;
  }

  if (result == 1)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 0;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v30 = operator new(0x18uLL);
    v30[4] = 1;
    *v30 = v20;
    *(v30 + 1) = &v53;
    *(v20 + 1) = v30;
    v53 = v30;
    v55 = 2;
    v31 = operator new(0x18uLL);
    v31[4] = 2;
    *v31 = v30;
    *(v31 + 1) = &v53;
    *(v30 + 1) = v31;
    v53 = v31;
    v55 = 3;
    v32 = operator new(0x18uLL);
    v32[4] = 3;
    *v32 = v31;
    *(v32 + 1) = &v53;
    *(v31 + 1) = v32;
    v53 = v32;
    v55 = 4;
    v33 = operator new(0x18uLL);
    v33[4] = 4;
    *v33 = v32;
    *(v33 + 1) = &v53;
    *(v32 + 1) = v33;
    v53 = v33;
    v55 = 5;
    v34 = operator new(0x18uLL);
    v34[4] = 5;
    *v34 = v33;
    *(v34 + 1) = &v53;
    *(v33 + 1) = v34;
    v53 = v34;
    v55 = 6;
    v35 = operator new(0x18uLL);
    v35[4] = 10;
    *v35 = v34;
    *(v35 + 1) = &v53;
    *(v34 + 1) = v35;
    v53 = v35;
    v55 = 7;
    v36 = operator new(0x18uLL);
    v36[4] = 12;
    *v36 = v35;
    *(v36 + 1) = &v53;
    *(v35 + 1) = v36;
    v53 = v36;
    v55 = 8;
    v37 = operator new(0x18uLL);
    v37[4] = 14;
    *v37 = v36;
    *(v37 + 1) = &v53;
    *(v36 + 1) = v37;
    v53 = v37;
    v55 = 9;
    v38 = operator new(0x18uLL);
    v38[4] = 11;
    v26 = &v53;
    *v38 = v37;
    *(v38 + 1) = &v53;
    *(v37 + 1) = v38;
    v53 = v38;
    v55 = 10;
    result = operator new(0x18uLL);
    *(result + 4) = 15;
    *result = v38;
    result[1] = &v53;
    *(v38 + 1) = result;
    v19 = 11;
    v53 = result;
    v55 = 11;
    if (a2[2])
    {
      result = a2[1];
      v39 = *(*a2 + 1);
      v40 = *result;
      v40[1] = v39;
      *v39 = v40;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v41 = result[1];
          operator delete(result);
          result = v41;
        }

        while (v41 != a2);
LABEL_20:
        if (!v55)
        {
          return result;
        }

        v19 = a2[2] + v55;
        goto LABEL_34;
      }

      v19 = 11;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (result == 2)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v4 = operator new(0x18uLL);
    v4[4] = 6;
    *v4 = &v53;
    *(v4 + 1) = &v53;
    v53 = v4;
    v54 = v4;
    v55 = 1;
    v5 = operator new(0x18uLL);
    v5[4] = 7;
    *v5 = v4;
    *(v5 + 1) = &v53;
    *(v4 + 1) = v5;
    v53 = v5;
    v55 = 2;
    v6 = operator new(0x18uLL);
    v6[4] = 8;
    *v6 = v5;
    *(v6 + 1) = &v53;
    *(v5 + 1) = v6;
    v53 = v6;
    v55 = 3;
    v7 = operator new(0x18uLL);
    v7[4] = 9;
    *v7 = v6;
    *(v7 + 1) = &v53;
    *(v6 + 1) = v7;
    v53 = v7;
    v55 = 4;
    v8 = operator new(0x18uLL);
    v8[4] = 10;
    *v8 = v7;
    *(v8 + 1) = &v53;
    *(v7 + 1) = v8;
    v53 = v8;
    v55 = 5;
    result = capabilities::abs::supportsETSProtocol(v8);
    if (result)
    {
      result = operator new(0x18uLL);
      *(result + 4) = 13;
      v9 = v53;
      *result = v53;
      result[1] = &v53;
      v9[1] = result;
      v53 = result;
      ++v55;
    }

    if (a2[2])
    {
      result = a2[1];
      v10 = *(*a2 + 1);
      v11 = *result;
      v11[1] = v10;
      *v10 = v11;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v12 = result[1];
          operator delete(result);
          result = v12;
        }

        while (v12 != a2);
      }
    }

    v13 = v55;
    if (v55)
    {
      v15 = v53;
      v14 = v54;
      v16 = v53[1];
      v17 = *v54;
      v17[1] = v16;
      *v16 = v17;
      v18 = *a2;
      v18[1] = v14;
      *v14 = v18;
      *a2 = v15;
      v15[1] = a2;
      v19 = a2[2] + v13;
LABEL_37:
      a2[2] = v19;
    }
  }

  return result;
}

void sub_29705A078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(va);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(v2);
  _Unwind_Resume(a1);
}

void sub_29705A098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(va);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(v2);
  _Unwind_Resume(a1);
}

void BasebandTransport::getSupportedProtocolsAsStringLowerCase(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v15, 170, sizeof(v15));
  BasebandTransport::getSupportedProtocols(this, v15);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v4 = *(i + 4);
    memset(__p, 170, sizeof(__p));
    BasebandTransport::asString(v4, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v5 = (__p + HIBYTE(__p[2]));
    }

    else
    {
      v5 = (__p[0] + __p[1]);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    for (; v6 != v5; v6 = (v6 + 1))
    {
      *v6 = __tolower(*v6);
    }

    v7 = operator new(0x28uLL);
    v8 = v7;
    *v7 = 0;
    *(v7 + 1) = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v7 + 1) = *__p;
      *(v7 + 4) = __p[2];
    }

    v9 = *a2;
    *v8 = *a2;
    v8[1] = a2;
    *(v9 + 8) = v8;
    *a2 = v8;
    ++a2[2];
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v15[2])
  {
    v10 = v15[1];
    v11 = *(v15[0] + 1);
    v12 = *v15[1];
    *(v12 + 8) = v11;
    *v11 = v12;
    v15[2] = 0;
    if (v10 != v15)
    {
      do
      {
        v13 = v10[1];
        operator delete(v10);
        v10 = v13;
      }

      while (v13 != v15);
    }
  }
}

void sub_29705A268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v17 = v16;
  operator delete(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asStringLowerCase@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = BasebandTransport::asString(a1, a2);
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = a2 + v4;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*a2 + a2[1]);
  }

  if (v5 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  for (; v8 != v7; ++v8)
  {
    result = __tolower(*v8);
    *v8 = result;
  }

  return result;
}

void sub_29705A324(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::list<std::string>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

void BasebandTransport::getSupportedProtocolsAsString(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v14, 170, sizeof(v14));
  BasebandTransport::getSupportedProtocols(this, v14);
  for (i = v14[1]; i != v14; i = i[1])
  {
    BasebandTransport::asString(*(i + 4), __p);
    v4 = operator new(0x28uLL);
    v5 = v4;
    *v4 = 0;
    *(v4 + 1) = 0;
    v6 = SHIBYTE(v13);
    if (SHIBYTE(v13) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v4 + 1) = *__p;
      *(v4 + 4) = v13;
    }

    v7 = *a2;
    *v5 = *a2;
    v5[1] = a2;
    *(v7 + 8) = v5;
    *a2 = v5;
    ++a2[2];
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v14[2])
  {
    v8 = v14[1];
    v9 = *(v14[0] + 1);
    v10 = *v14[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    v14[2] = 0;
    if (v8 != v14)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v14);
    }
  }
}

void sub_29705A500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = v16;
  operator delete(v18);
  operator delete(v17);
  std::list<std::pair<unsigned long long,unsigned int>>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 3;
      *a2 = 16976;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 1:
      a2[23] = 3;
      *a2 = 16979;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 2:
      a2[23] = 4;
      strcpy(a2, "DIAG");
      break;
    case 3:
      a2[23] = 4;
      strcpy(a2, "REFS");
      break;
    case 4:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 49;
      a2[5] = 0;
      break;
    case 5:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 50;
      a2[5] = 0;
      break;
    case 6:
      a2[23] = 3;
      *a2 = 20306;
      a2[2] = 77;
      a2[3] = 0;
      break;
    case 7:
      a2[23] = 4;
      strcpy(a2, "BOOT");
      break;
    case 8:
      a2[23] = 3;
      *a2 = 21057;
      a2[2] = 73;
      a2[3] = 0;
      break;
    case 9:
      a2[23] = 3;
      *a2 = 21587;
      a2[2] = 84;
      a2[3] = 0;
      break;
    case 10:
      a2[23] = 2;
      strcpy(a2, "AT");
      break;
    case 11:
      a2[23] = 4;
      strcpy(a2, "ADPL");
      break;
    case 12:
      a2[23] = 8;
      strcpy(a2, "MEDIACTL");
      break;
    case 13:
      a2[23] = 3;
      *a2 = 21573;
      a2[2] = 83;
      a2[3] = 0;
      break;
    case 14:
      a2[23] = 4;
      strcpy(a2, "GNSS");
      break;
    case 15:
      a2[23] = 4;
      strcpy(a2, "QDSS");
      break;
    case 16:
      a2[23] = 5;
      *a2 = 1414808402;
      a2[4] = 72;
      a2[5] = 0;
      break;
    case 17:
      a2[23] = 3;
      *a2 = 17217;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 18:
      a2[23] = 4;
      strcpy(a2, "VCOM");
      break;
    case 19:
      a2[23] = 4;
      strcpy(a2, "MIPC");
      break;
    case 20:
      a2[23] = 3;
      *a2 = 18500;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 21:
      a2[23] = 3;
      *a2 = 21837;
      a2[2] = 88;
      a2[3] = 0;
      break;
    case 22:
      a2[23] = 3;
      *a2 = 16710;
      a2[2] = 67;
      a2[3] = 0;
      break;
    case 23:
      a2[23] = 3;
      *a2 = 17734;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 24:
      a2[23] = 7;
      strcpy(a2, "IQTRACE");
      break;
    default:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      break;
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 7;
        strcpy(a2, "Stalled");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 5;
    *a2 = 1869771333;
    a2[4] = 114;
    a2[5] = 0;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 5;
        *a2 = 1684104530;
        a2[4] = 121;
        a2[5] = 0;
        return result;
      }

LABEL_8:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      return result;
    }

    a2[23] = 8;
    strcpy(a2, "NotReady");
  }

  return result;
}

uint64_t BasebandTransport::asProtocol(char *__s1)
{
  v1 = __s1;
  if ((__s1[23] & 0x80000000) == 0)
  {
    result = strcmp(__s1, "PBL");
    if (!result)
    {
      return result;
    }

    if (!strcmp(v1, "SBL"))
    {
      return 1;
    }

    if (strcasecmp(v1, "DIAG"))
    {
      if (strcasecmp(v1, "REFS"))
      {
        if (strcasecmp(v1, "QMUX1"))
        {
          if (strcasecmp(v1, "QMUX2"))
          {
            if (strcasecmp(v1, "ROM"))
            {
              if (strcasecmp(v1, "BOOT"))
              {
                if (strcasecmp(v1, "ARI"))
                {
                  if (strcasecmp(v1, "STT"))
                  {
                    if (strcasecmp(v1, "AT"))
                    {
                      if (strcasecmp(v1, "ADPL"))
                      {
                        if (strcasecmp(v1, "MEDIACTL"))
                        {
                          if (strcasecmp(v1, "ETS"))
                          {
                            if (strcasecmp(v1, "GNSS"))
                            {
                              if (strcasecmp(v1, "QDSS"))
                              {
                                if (strcasecmp(v1, "RCTTH"))
                                {
                                  if (strcasecmp(v1, "ACP"))
                                  {
                                    if (strcasecmp(v1, "VCOM"))
                                    {
                                      if (strcasecmp(v1, "MIPC"))
                                      {
                                        if (strcasecmp(v1, "DHL"))
                                        {
                                          if (strcasecmp(v1, "MUX"))
                                          {
                                            if (strcasecmp(v1, "FAC"))
                                            {
                                              if (strcasecmp(v1, "FEP"))
                                              {
                                                goto LABEL_26;
                                              }

                                              return 23;
                                            }

                                            return 22;
                                          }

                                          return 21;
                                        }

                                        return 20;
                                      }

                                      return 19;
                                    }

                                    return 18;
                                  }

                                  return 17;
                                }

                                return 16;
                              }

                              return 15;
                            }

                            return 14;
                          }

                          return 13;
                        }

                        return 12;
                      }

                      return 11;
                    }

                    return 10;
                  }

                  return 9;
                }

                return 8;
              }

              return 7;
            }

            return 6;
          }

          return 5;
        }

        return 4;
      }

      return 3;
    }

    return 2;
  }

  v1 = *__s1;
  result = strcmp(*__s1, "PBL");
  if (!result)
  {
    return result;
  }

  if (!strcmp(v1, "SBL"))
  {
    return 1;
  }

  if (!strcasecmp(v1, "DIAG"))
  {
    return 2;
  }

  if (!strcasecmp(v1, "REFS"))
  {
    return 3;
  }

  if (!strcasecmp(v1, "QMUX1"))
  {
    return 4;
  }

  if (!strcasecmp(v1, "QMUX2"))
  {
    return 5;
  }

  if (!strcasecmp(v1, "ROM"))
  {
    return 6;
  }

  if (!strcasecmp(v1, "BOOT"))
  {
    return 7;
  }

  if (!strcasecmp(v1, "ARI"))
  {
    return 8;
  }

  if (!strcasecmp(v1, "STT"))
  {
    return 9;
  }

  if (!strcasecmp(v1, "AT"))
  {
    return 10;
  }

  if (!strcasecmp(v1, "ADPL"))
  {
    return 11;
  }

  if (!strcasecmp(v1, "MEDIACTL"))
  {
    return 12;
  }

  if (!strcasecmp(v1, "ETS"))
  {
    return 13;
  }

  if (!strcasecmp(v1, "GNSS"))
  {
    return 14;
  }

  if (!strcasecmp(v1, "QDSS"))
  {
    return 15;
  }

  if (!strcasecmp(v1, "RCTTH"))
  {
    return 16;
  }

  if (!strcasecmp(v1, "ACP"))
  {
    return 17;
  }

  if (!strcasecmp(v1, "VCOM"))
  {
    return 18;
  }

  if (!strcasecmp(v1, "MIPC"))
  {
    return 19;
  }

  if (!strcasecmp(v1, "DHL"))
  {
    return 20;
  }

  if (!strcasecmp(v1, "MUX"))
  {
    return 21;
  }

  if (!strcasecmp(v1, "FAC"))
  {
    return 22;
  }

  if (!strcasecmp(v1, "FEP"))
  {
    return 23;
  }

LABEL_26:
  if (!strcasecmp(v1, "IQTRACE"))
  {
    return 24;
  }

  else
  {
    return 25;
  }
}

uint64_t BasebandTransport::getDefaultTransportIOReadSize(capabilities::radio *a1)
{
  v1 = a1;
  v2 = capabilities::radio::dal(a1);
  if (v2)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v2);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v3;
  }

  if (v1 == 17)
  {
    return 0x80000;
  }

  if (v1 == 21 || v1 == 20)
  {
    return 61440;
  }

  v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if (v1 == 10 && (v6 & 1) != 0)
  {
    return 3584;
  }

  if ((v1 - 19) > 5)
  {
    return 0x8000;
  }

  return dword_297224C78[v1 - 19];
}

uint64_t BasebandTransport::getDefaultTransportIOReadCount(capabilities::abs *a1)
{
  v1 = a1;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(a1);
  if (shouldUseMinBasebandTransportIOReadCount)
  {
    return 4;
  }

  switch(v1)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  v4 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v1 == 10 && (v4 & 1) != 0)
  {
    return 15;
  }

  if (v1 <= 18)
  {
    if (v1 != 2)
    {
      if (v1 == 15 || v1 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v1 > 22)
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 86;
      }

      return 4;
    }
  }

  else if (v1 != 19)
  {
    return 15;
  }

  return result;
}

double BasebandTransport::Status::Status(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double BasebandTransport::Status::init(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t BasebandTransport::Status::toString@<X0>(BasebandTransport::Status *this@<X0>, _BYTE *a2@<X8>)
{
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[7] = v4;
  v45[8] = v4;
  v45[5] = v4;
  v45[6] = v4;
  v45[3] = v4;
  v45[4] = v4;
  v45[1] = v4;
  v45[2] = v4;
  v44 = v4;
  v45[0] = v4;
  *v42 = v4;
  v43 = v4;
  v40 = v4;
  v41 = v4;
  v38 = v4;
  v39 = v4;
  v37 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v37);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "State: ", 7);
  v6 = *this;
  if (*this > 1)
  {
    if (v6 == 2)
    {
      v7 = 5;
      v36 = 5;
      LODWORD(__p[0]) = 1869771333;
      v8 = 114;
      goto LABEL_12;
    }

    if (v6 == 3)
    {
      v7 = 7;
      v36 = 7;
      LODWORD(__p[0]) = 1818326099;
      v9 = 1684368492;
LABEL_9:
      *(__p + 3) = v9;
      goto LABEL_13;
    }

LABEL_8:
    v7 = 7;
    v36 = 7;
    LODWORD(__p[0]) = 1852534357;
    v9 = 1853321070;
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = 8;
    v36 = 8;
    __p[0] = 0x7964616552746F4ELL;
    goto LABEL_13;
  }

  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v7 = 5;
  v36 = 5;
  LODWORD(__p[0]) = 1684104530;
  v8 = 121;
LABEL_12:
  BYTE4(__p[0]) = v8;
LABEL_13:
  *(__p + v7) = 0;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, __p, v7);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", ", 2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Async: ", 7);
  *(v12 + *(*v12 - 24) + 8) |= 1u;
  v13 = *(this + 4);
  v14 = MEMORY[0x29C26BDD0]();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Total Rx: ", 10);
  v17 = MEMORY[0x29C26BE40](v16, *(this + 1) >> 10);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " KB, ", 5);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Total Tx: ", 10);
  v20 = MEMORY[0x29C26BE40](v19, *(this + 2) >> 10);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " KB, ", 5);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Total RX: ", 10);
  v23 = MEMORY[0x29C26BE40](v22, *(this + 1));
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " B, ", 4);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Total TX: ", 10);
  v26 = MEMORY[0x29C26BE40](v25, *(this + 2));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " B", 2);
  if ((v36 & 0x80000000) == 0)
  {
    v27 = BYTE8(v44);
    if ((BYTE8(v44) & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v29 = v44;
    if (v44 < *(&v41 + 1))
    {
      *&v44 = *(&v41 + 1);
      v29 = *(&v41 + 1);
    }

    v30 = v41;
    v28 = v29 - v41;
    if ((v29 - v41) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  operator delete(__p[0]);
  v27 = BYTE8(v44);
  if ((BYTE8(v44) & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v27 & 8) == 0)
  {
    v28 = 0;
    a2[23] = 0;
    goto LABEL_29;
  }

  v30 = *(&v39 + 1);
  v28 = *(&v40 + 1) - *(&v39 + 1);
  if (*(&v40 + 1) - *(&v39 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_21:
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

    v32 = operator new(v31);
    *(a2 + 1) = v28;
    *(a2 + 2) = v31 | 0x8000000000000000;
    *a2 = v32;
    a2 = v32;
    goto LABEL_28;
  }

  a2[23] = v28;
  if (v28)
  {
LABEL_28:
    memmove(a2, v30, v28);
  }

LABEL_29:
  a2[v28] = 0;
  *&v37 = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v38 = v33;
  *(&v38 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  *(&v38 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v39);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26C030](v45);
}

void sub_29705B4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_29705B4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C26C030](a1 + 128);
  return a1;
}

uint64_t BasebandTransport::Parameters::toString@<X0>(BasebandTransport::Parameters *this@<X0>, _BYTE *a2@<X8>)
{
  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[7] = v4;
  v48[8] = v4;
  v48[5] = v4;
  v48[6] = v4;
  v48[3] = v4;
  v48[4] = v4;
  v48[1] = v4;
  v48[2] = v4;
  v47 = v4;
  v48[0] = v4;
  *v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  v41 = v4;
  v42 = v4;
  v40 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v40);
  BasebandTransport::asString(*this, v35);
  v5 = v36;
  if ((v36 & 0x80u) == 0)
  {
    v6 = v36;
  }

  else
  {
    v6 = v35[1];
  }

  v7 = v6 + 10;
  if (v6 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    v38 = 8250;
    v39 = 0;
    HIBYTE(v39) = v6 + 10;
    __p = *"Protocol: ";
    v10 = &v38 + 2;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v38 = v6 + 10;
    v39 = v8 | 0x8000000000000000;
    __p = v9;
    *(v9 + 4) = 8250;
    *v9 = *"Protocol: ";
    v10 = v9 + 10;
  }

  if (v5 >= 0)
  {
    v11 = v35;
  }

  else
  {
    v11 = v35[0];
  }

  memmove(v10, v11, v6);
LABEL_15:
  v10[v6] = 0;
  if (v39 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v39 >= 0)
  {
    v13 = HIBYTE(v39);
  }

  else
  {
    v13 = v38;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, p_p, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Powersave: ", 11);
  *(v16 + *(*v16 - 24) + 8) |= 1u;
  v17 = *(this + 4);
  v18 = MEMORY[0x29C26BDD0]();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Create Timeout: ", 16);
  v21 = MEMORY[0x29C26BE30](v20, *(this + 1));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " sec, ", 6);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "IO Size: ", 9);
  v24 = MEMORY[0x29C26BE00](v23, *(this + 4) >> 10);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " KB, ", 5);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Num Pending Reads: ", 19);
  MEMORY[0x29C26BE00](v26, *(this + 5));
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_23:
      v27 = BYTE8(v47);
      if ((BYTE8(v47) & 0x10) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v29 = v47;
      if (v47 < *(&v44 + 1))
      {
        *&v47 = *(&v44 + 1);
        v29 = *(&v44 + 1);
      }

      v30 = v44;
      v28 = v29 - v44;
      if ((v29 - v44) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v35[0]);
  v27 = BYTE8(v47);
  if ((BYTE8(v47) & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if ((v27 & 8) == 0)
  {
    v28 = 0;
    a2[23] = 0;
    goto LABEL_39;
  }

  v30 = *(&v42 + 1);
  v28 = *(&v43 + 1) - *(&v42 + 1);
  if (*(&v43 + 1) - *(&v42 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
LABEL_43:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_31:
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

    v32 = operator new(v31);
    *(a2 + 1) = v28;
    *(a2 + 2) = v31 | 0x8000000000000000;
    *a2 = v32;
    a2 = v32;
    goto LABEL_38;
  }

  a2[23] = v28;
  if (v28)
  {
LABEL_38:
    memmove(a2, v30, v28);
  }

LABEL_39:
  a2[v28] = 0;
  *&v40 = *MEMORY[0x29EDC9528];
  v33 = *(MEMORY[0x29EDC9528] + 72);
  *(&v40 + *(v40 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v41 = v33;
  *(&v41 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[1]);
  }

  *(&v41 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v42);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26C030](v48);
}

void sub_29705BB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_29705BB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if ((v18 & 0x80000000) == 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

void BasebandTransport::BasebandTransport(BasebandTransport *this, queue a2, qos_class_t a3)
{
  *this = &unk_2A1E25730;
  ctu::OsLogContext::OsLogContext(v18, "com.apple.telephony.abm", "ipc.bb");
  v6 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v7 = dispatch_queue_create("ipc.bb", v6);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    *(this + 4) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(this + 4) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](this + 40, v19);
  MEMORY[0x29C26B020](v19);
  ctu::OsLogContext::~OsLogContext(v18);
  *this = &unk_2A1E25730;
  *(this + 12) = 25;
  *(this + 52) = 0;
  *(this + 7) = 10;
  v10 = capabilities::radio::dal(v9);
  v11 = v10;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v10);
  if (v11)
  {
    v13 = 1024;
  }

  else
  {
    v13 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
    v13 = 0x8000;
  }

  *(this + 16) = v13;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  }

  *(this + 17) = 4;
  *(this + 9) = 0;
  *(this + 80) = 0;
  v15 = *a2.fObj.fObj;
  *(this + 11) = 0;
  *(this + 12) = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(this + 13) = 0;
  *(this + 14) = 0;
  v16 = *MEMORY[0x29EDB8ED8];
  Controller = TelephonyBasebandCreateController();
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = Controller;
  *(this + 229) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 33) = dispatch_group_create();
  *(this + 68) = 0;
  *(this + 276) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 309) = 0;
  *(this + 88) = a3;
  *(this + 45) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
}

void sub_29705BDA0(_Unwind_Exception *a1)
{
  v5 = v1[14];
  if (v5)
  {
    _Block_release(v5);
  }

  if (*v3)
  {
    _Block_release(*v3);
  }

  v6 = v1[12];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = v1[11];
  if (v7)
  {
    _Block_release(v7);
  }

  MEMORY[0x29C26B020](v1 + 5);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void BasebandTransport::~BasebandTransport(BasebandTransport *this)
{
  *this = &unk_2A1E25730;
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v17, 2u);
    }
  }

  (*(*this + 48))(this);
  v4 = *(this + 26);
  if (v4)
  {
    CFRelease(v4);
    *(this + 26) = 0;
  }

  v5 = *(this + 30);
  if (v5)
  {
    operator delete[](v5);
    *(this + 30) = 0;
  }

  v6 = *(this + 45);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 33);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 27);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(this + 13);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    _Block_release(v13);
  }

  MEMORY[0x29C26B020](this + 40);
  v14 = *(this + 4);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

{
  BasebandTransport::~BasebandTransport(this);

  operator delete(v1);
}

void BasebandTransport::timerOff_sync(BasebandTransport *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

void BasebandTransport::create(BasebandTransport *this@<X0>, queue a2@<0:X1>, void *a3@<X8>)
{
  fObj = a2.fObj.fObj;
  *a3 = 0;
  a3[1] = 0;
  v7 = capabilities::radio::vendor(this);
  if ((v7 - 3) < 2)
  {
    v8 = operator new(0x170uLL);
    v9 = *this;
    v17 = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v10.fObj.fObj = &v17;
    BasebandTransport::BasebandTransport(v8, v10, fObj);
    v18[0] = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<BasebandTransport>::shared_ptr[abi:ne200100]<BasebandTransport,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1},0>(v18, v8);
    v11 = *v18;
    *v18 = 0uLL;
    *a3 = v11;
    if (!v9)
    {
      goto LABEL_14;
    }

    v12 = v9;
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    return;
  }

  v13 = operator new(0x170uLL);
  v14 = *this;
  if (*this)
  {
    dispatch_retain(*this);
    dispatch_retain(v14);
  }

  v19 = v14;
  v15.fObj.fObj = &v19;
  BasebandTransport::BasebandTransport(v13, v15, fObj);
  if (v14)
  {
    dispatch_release(v14);
  }

  *v13 = &unk_2A1E30998;
  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BasebandTransportMAV>::shared_ptr[abi:ne200100]<BasebandTransportMAV,std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV*)#1},0>(v18, v13);
  v11 = *v18;
  *v18 = 0uLL;
  *a3 = v11;
  if (v14)
  {
    v12 = v14;
LABEL_13:
    v16 = v11;
    dispatch_release(v12);
    *&v11 = v16;
  }

LABEL_14:
  BasebandTransport::init(v11);
}

void sub_29705C1D8(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void BasebandTransport::init(BasebandTransport *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN17BasebandTransport4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_56_0;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN17BasebandTransport4initEv_block_invoke(capabilities::ipc *a1)
{
  v2 = *(a1 + 4);
  if (capabilities::ipc::supportsPCI(a1))
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN17BasebandTransport4initEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_26;
    v4 = *(a1 + 5);
    v3 = *(a1 + 6);
    aBlock[4] = v2;
    aBlock[5] = v4;
    v14 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = _Block_copy(aBlock);
    v6 = *(v2 + 104);
    *(v2 + 104) = v5;
    if (v6)
    {
      _Block_release(v6);
    }

    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN17BasebandTransport4initEv_block_invoke_48;
    v11[3] = &__block_descriptor_tmp_52_3;
    v8 = *(a1 + 5);
    v7 = *(a1 + 6);
    v11[4] = v2;
    v11[5] = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = _Block_copy(v11);
    v10 = *(v2 + 112);
    *(v2 + 112) = v9;
    if (v10)
    {
      _Block_release(v10);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_2(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        v12 = *(v9 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v24 = a2;
          v25 = 2048;
          v26 = a3;
          v27 = 2048;
          v28 = a4;
          _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "PCI Transport Status: 0x%x (0x%08lx, 0x%08lx)", buf, 0x1Cu);
        }

        *(v9 + 272) = 2 * (a2 != 0);
        *(v9 + 296) = vsubq_s64(*(v9 + 280), *(v9 + 320));
        v13 = *(v9 + 216);
        if (v13)
        {
          v14 = _Block_copy(v13);
          v15 = v14;
          v20 = *(v9 + 272);
          v21 = *(v9 + 288);
          v22 = *(v9 + 304);
          v16 = *(v9 + 96);
          v17 = v14 ? _Block_copy(v14) : 0;
          v18 = operator new(0x30uLL);
          *v18 = v17;
          *(v18 + 8) = v20;
          *(v18 + 24) = v21;
          *(v18 + 5) = v22;
          dispatch_async_f(v16, v18, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (v15)
          {
            _Block_release(v15);
          }
        }
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_29705C718(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int64x2_t BasebandTransport::updateDeltas_sync(BasebandTransport *this)
{
  result = vsubq_s64(*(this + 280), *(this + 20));
  *(this + 296) = result;
  return result;
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_48(void *a1, int a2, void *a3, unsigned int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = a1[4];
  v28 = 0;
  v7 = a1[6];
  if (v7 && (v28 = std::__shared_weak_count::lock(v7)) != 0 && (v10 = a1[5]) != 0)
  {
    v11 = *(v10 + 264);
    if (v11)
    {
      dispatch_retain(*(v10 + 264));
      dispatch_group_enter(v11);
    }

    if (a2)
    {
      v12 = *(v6 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = a2;
        _os_log_debug_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEBUG, "#D Async read error 0x%08x", &__p, 8u);
      }
    }

    else
    {
      *(v6 + 280) += a4;
      v14 = *(v6 + 88);
      if (v14)
      {
        v15 = _Block_copy(v14);
        v16 = *(v6 + 72);
        if (v16)
        {
          __p = 0;
          v30 = 0;
          v31 = 0;
          (*(*v16 + 8))(v16, a3, a4, &__p);
          v17 = *(v6 + 96);
          if (v15)
          {
            v18 = _Block_copy(v15);
          }

          else
          {
            v18 = 0;
          }

          v22 = __p;
          v23 = v30 - __p;
          if (v30 == __p)
          {
            v25 = 0;
            v24 = 0;
          }

          else
          {
            if ((v23 & 0x8000000000000000) != 0)
            {
              std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
            }

            v24 = operator new(v30 - __p);
            v25 = &v24[v23];
            memcpy(v24, v22, v23);
          }

          v26 = operator new(0x20uLL);
          *v26 = v18;
          v26[1] = v24;
          v26[2] = v25;
          v26[3] = v25;
          dispatch_async_f(v17, v26, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (__p)
          {
            v30 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v19 = *(v6 + 80);
          v20 = *(v6 + 96);
          if (v15)
          {
            v21 = _Block_copy(v15);
          }

          else
          {
            v21 = 0;
          }

          v27 = operator new(0x18uLL);
          *v27 = v21;
          v27[1] = a3;
          *(v27 + 4) = a4;
          *(v27 + 20) = v19;
          dispatch_async_f(v20, v27, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          a3 = 0;
        }

        if (v15)
        {
          _Block_release(v15);
        }
      }
    }

    if (a3 && (*(v6 + 80) & 1) == 0)
    {
      free(a3);
    }

    if (v11)
    {
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }
  }

  else if (a3)
  {
    free(a3);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_29705CA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t BasebandTransport::open(BasebandTransport *a1, __int128 *a2, void **a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  BasebandTransport::stopReader(a1);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke;
  v12[3] = &unk_2A1E25800;
  v12[5] = a1;
  v6 = a2[1];
  v13 = *a2;
  v14 = v6;
  v15 = *(a2 + 4);
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v12[4] = &v17;
  v21 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v21;
  v8 = *(a1 + 3);
  if (*(a1 + 4))
  {
    dispatch_async_and_wait(v8, block);
    v9 = *(v18 + 24);
    v10 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v8, block);
  v9 = *(v18 + 24);
  v10 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v10);
  }

LABEL_8:
  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_29705CC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BasebandTransport::stopReader(BasebandTransport *this)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v2 = (this + 8);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke;
  v13[3] = &unk_29EE63CC0;
  v13[4] = v14;
  v13[5] = this;
  v16 = v13;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = this + 8;
  block[5] = &v16;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke_2;
  v12[3] = &unk_29EE63CE8;
  v12[4] = v14;
  v12[5] = this;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v2, v12);
  v5 = *(this + 33);
  if (v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Waiting for reader to be stopped", block, 2u);
      v5 = *(this + 33);
    }

    v7 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v5, v7))
    {
      (*(*this + 48))(this);
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block[0]) = 0;
        _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "Timeout waiting for read to unblock, freed transport to force read unblock", block, 2u);
      }
    }

    else
    {
      v10 = *(this + 30);
      if (v10)
      {
        operator delete[](v10);
        *(this + 30) = 0;
        v11 = *(this + 32);
        *(this + 32) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Reader stopped", block, 2u);
    }
  }

  _Block_object_dispose(v14, 8);
}

void sub_29705CF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 224);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v2 + 224));
    *(v2 + 224) = 0;
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v9, 2u);
    }
  }

  (*(*v2 + 48))(v2);
  *(v2 + 272) = 0;
  *(v2 + 276) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 309) = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  *(v2 + 48) = *(a1 + 48);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(v2 + 88);
  *(v2 + 88) = v7;
  if (v8)
  {
    _Block_release(v8);
  }

  if (*(v2 + 48) != 25)
  {
    if (capabilities::ipc::supportsPCI(v7))
    {
      *(*(*(a1 + 32) + 8) + 24) = BasebandTransport::openPCI_sync(v2);
    }

    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      BasebandTransport::timerOn_sync(v2);
    }

    else
    {
      (*(*v2 + 48))(v2);
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
    v9[3] = &__block_descriptor_tmp_86;
    v9[4] = v2;
    v10 = 0;
    ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped((v2 + 8), v9);
  }
}

uint64_t BasebandTransport::openPCI_sync(BasebandTransport *this)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(this + 2);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = v3;
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v4);
  }

  inited = TelephonyBasebandPCITransportInitParameters();
  v6 = *(this + 14);
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::traceTransportTimeoutScalingFactor(inited);
  v8 = 1000 * v6;
  if ((((1000 * v6) * shouldUseMinBasebandTransportIOReadCount) & 0xFFFFFFFF00000000) != 0)
  {
    v9 = *(this + 5);
    shouldUseMinBasebandTransportIOReadCount = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Scaled create timeout overflowed, falling back to unscaled value: %u", buf, 8u);
    }
  }

  v36 = *(this + 3);
  v10 = *(this + 17);
  if (!v10)
  {
    v11 = *(this + 12);
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadCount);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
LABEL_10:
      v10 = 4;
      goto LABEL_29;
    }

    if (v11 != 17)
    {
      if (v11 == 21)
      {
        goto LABEL_19;
      }

      if (v11 == 20)
      {
        v10 = 63;
        goto LABEL_29;
      }

      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
      v12 = v11 == 10 ? shouldUseMinBasebandTransportIOReadCount : 0;
      if (v12)
      {
        goto LABEL_19;
      }

      if (v11 > 18)
      {
        v10 = 31;
        if (v11 > 22)
        {
          if (v11 == 23)
          {
            goto LABEL_29;
          }

          if (v11 == 24)
          {
            v10 = 86;
            goto LABEL_29;
          }

          goto LABEL_10;
        }

        if (v11 == 19)
        {
          goto LABEL_29;
        }

LABEL_19:
        v10 = 15;
        goto LABEL_29;
      }

      if (v11 != 2)
      {
        if (v11 == 15 || v11 == 16)
        {
          v10 = 36;
          goto LABEL_29;
        }

        goto LABEL_10;
      }
    }

    v10 = 16;
  }

LABEL_29:
  v38 = v10;
  v13 = *(this + 16);
  if (!v13)
  {
    v14 = *(this + 12);
    v15 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
    v16 = v15;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v15);
    v13 = v16 ? 1024 : 0x4000;
    if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
    {
      if (v14 == 17)
      {
        v13 = 0x80000;
      }

      else if (v14 == 21 || v14 == 20)
      {
        v13 = 61440;
      }

      else
      {
        shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
        if (v14 == 10)
        {
          v17 = shouldUseMinBasebandTransportIOReadCount;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v13 = 3584;
        }

        else if ((v14 - 19) > 5)
        {
          v13 = 0x8000;
        }

        else
        {
          v13 = dword_297224C78[v14 - 19];
        }
      }
    }
  }

  v39 = v13;
  v41 = *(this + 88);
  v18 = *(this + 12);
  if (v18 != 20 && v18 != 9)
  {
    goto LABEL_57;
  }

  v48[0] = &unk_2A1E25AA8;
  v49 = v48;
  inactive = dispatch_workloop_create_inactive("com.apple.BasebandTransport.workloop");
  *buf = inactive;
  if (!v49)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v49 + 48))(v49, buf);
  dispatch_activate(inactive);
  v20 = *(this + 45);
  *(this + 45) = inactive;
  if (v20)
  {
    dispatch_release(v20);
  }

  shouldUseMinBasebandTransportIOReadCount = v49;
  if (v49 != v48)
  {
    if (v49)
    {
      shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 40))(v49);
    }

    if (*(this + 45))
    {
      goto LABEL_56;
    }

LABEL_59:
    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to create workloop", buf, 2u);
    }

    goto LABEL_95;
  }

  shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 32))(v49);
  if (!*(this + 45))
  {
    goto LABEL_59;
  }

LABEL_56:
  v18 = *(this + 12);
LABEL_57:
  switch(v18)
  {
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      goto LABEL_70;
    case 2:
      shouldUseMinBasebandTransportIOReadCount = capabilities::diag::supportsQDSS(shouldUseMinBasebandTransportIOReadCount);
      goto LABEL_70;
    case 10:
      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
LABEL_70:
      v25 = v38;
      if (v38 < 0x41)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    case 24:
      v25 = v38;
      if (v38 >= 0x57)
      {
LABEL_63:
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        *v44 = 136315394;
        v45 = v23;
        v46 = 2048;
        v47 = v25;
        v24 = "%s: invalid transport io read count (%lu)";
        goto LABEL_92;
      }

LABEL_71:
      if (capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount))
      {
        v26 = 1024;
      }

      else
      {
        v26 = 0x4000;
      }

      if (v39 > 0x100000 || v26 > v39)
      {
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v31 = buf;
        }

        else
        {
          v31 = *buf;
        }

        *v44 = 136315394;
        v45 = v31;
        v46 = 2048;
        v47 = v39;
        v24 = "%s: invalid transport io read size (%lu)";
LABEL_92:
        _os_log_error_impl(&dword_296FF7000, v22, OS_LOG_TYPE_ERROR, v24, v44, 0x16u);
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_93;
      }

      v37 = *(this + 13);
      if (*(this + 11))
      {
        *(this + 276) = 1;
        v40 = *(this + 14);
      }

      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296FF7000, v27, OS_LOG_TYPE_DEFAULT, "#I opening transport", buf, 2u);
      }

      if (!TelephonyBasebandPCITransportCreate())
      {
        *(this + 68) = 2;
        v32 = *(this + 5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          BasebandTransport::asString(*(this + 12), buf);
          v35 = v43 >= 0 ? buf : *buf;
          *v44 = 136315138;
          v45 = v35;
          _os_log_error_impl(&dword_296FF7000, v32, OS_LOG_TYPE_ERROR, "%s: transport open failed", v44, 0xCu);
          if (v43 < 0)
          {
LABEL_93:
            operator delete(*buf);
          }
        }

LABEL_95:
        v28 = 0;
        goto LABEL_96;
      }

      v28 = 1;
      *(this + 68) = 1;
      v29 = *(this + 5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        *v44 = 136315394;
        v45 = v30;
        v46 = 1024;
        LODWORD(v47) = v39;
        _os_log_impl(&dword_296FF7000, v29, OS_LOG_TYPE_DEFAULT, "#I %s: transport successfully opened with read io size as %u", v44, 0x12u);
        if (v43 < 0)
        {
          operator delete(*buf);
        }
      }

LABEL_96:
      std::__shared_weak_count::__release_weak(v4);
      v33 = *MEMORY[0x29EDCA608];
      return v28;
    default:
      goto LABEL_95;
  }
}

void sub_29705D914(_Unwind_Exception *a1)
{
  std::function<void ()(dispatch_workloop_s *)>::~function(v2 - 88);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BasebandTransport::timerOn_sync(BasebandTransport *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", buf, 2u);
    }
  }

  if (*(this + 68) == 1)
  {
    v4 = *(this + 58);
    if (v4 && *(this + 27))
    {
      v5 = 1000000000 * v4;
      v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
      *(this + 28) = v6;
      v7 = dispatch_time(0, v5);
      dispatch_source_set_timer(v6, v7, v5, 0xBEBC200uLL);
      v8 = *(this + 2);
      if (!v8 || (v9 = *(this + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

      v13 = *(this + 28);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 1174405120;
      handler[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke;
      handler[3] = &__block_descriptor_tmp_85_1;
      handler[4] = this;
      handler[5] = v9;
      v19 = v11;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      dispatch_source_set_event_handler(v13, handler);
      dispatch_activate(*(this + 28));
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(this + 58);
        *buf = 67109120;
        v21 = v15;
        _os_log_impl(&dword_296FF7000, v14, OS_LOG_TYPE_DEFAULT, "#I Status report enabled(%d sec)", buf, 8u);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEFAULT, "#I Invalid state for status report enable.  Ignoring enable request.", buf, 2u);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
}

void BasebandTransport::dumpState(BasebandTransport *this, char a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
  v2[3] = &__block_descriptor_tmp_86;
  v2[4] = this;
  v3 = a2;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(this + 1, v2);
}

void *__copy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void __destroy_helper_block_e8_88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t BasebandTransport::write(BasebandTransport *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v7 = this + 8;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 0x40000000;
  v34[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke;
  v34[3] = &unk_29EE63B90;
  v34[5] = &v39;
  v34[6] = this;
  v34[4] = &v35;
  v44 = v34;
  block = MEMORY[0x29EDCA5F8];
  p_block = 0x40000000;
  v28 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v29 = &__block_descriptor_tmp_98;
  v30 = (this + 8);
  __p = &v44;
  v9 = this + 24;
  v8 = *(this + 3);
  if (*(v9 + 1))
  {
    dispatch_async_and_wait(v8, &block);
    if (*(v40 + 24) == 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_19;
  }

  dispatch_sync(v8, &block);
  if (*(v40 + 24) != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  block = 0;
  p_block = &block;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = a3;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59;
  v17[3] = &unk_29EE63BB8;
  v17[8] = a2;
  v17[9] = a3;
  v17[4] = &block;
  v17[5] = &v22;
  v17[6] = &v18;
  v17[7] = this;
  v43 = v17;
  v44 = MEMORY[0x29EDCA5F8];
  v45 = 0x40000000;
  v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v47 = &__block_descriptor_tmp_98;
  v48 = v7;
  v49 = &v43;
  v10 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v10, &v44);
    if (v19[3])
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_sync(v10, &v44);
    if (v19[3])
    {
LABEL_5:
      v11 = v36[3];
      if (*v11)
      {
        v12 = (*v11)(v11, v23[3]);
        *(v40 + 24) = v12;
        if (v12)
        {
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 0x40000000;
          v16[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2;
          v16[3] = &unk_29EE63BE0;
          v16[4] = &v18;
          v16[5] = this;
          v43 = v16;
          v44 = MEMORY[0x29EDCA5F8];
          v45 = 0x40000000;
          v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
          v47 = &__block_descriptor_tmp_98;
          v48 = v7;
          v49 = &v43;
          v13 = *(this + 3);
          if (*(this + 4))
          {
            dispatch_async_and_wait(v13, &v44);
          }

          else
          {
            dispatch_sync(v13, &v44);
          }

          v14 = *(v40 + 24);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        *(v40 + 24) = 0;
      }

      goto LABEL_17;
    }
  }

  v14 = 1;
LABEL_17:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&block, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

LABEL_19:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v14 & 1;
}

void sub_29705E060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v39 - 216), 8);
  _Block_object_dispose((v39 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    result = v3();
    *(*(a1[5] + 8) + 24) = result;
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
  }

  return result;
}

void *___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59(void *result)
{
  v1 = *(result[7] + 72);
  if (v1)
  {
    v2 = result;
    result = (**v1)(*(result[7] + 72), result[8], result[9], *(result[4] + 8) + 40);
    *(*(v2[5] + 8) + 24) = *(*(v2[4] + 8) + 40);
    *(*(v2[6] + 8) + 24) = *(*(v2[4] + 8) + 48) - *(*(v2[4] + 8) + 40);
  }

  return result;
}

void ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(v2 + 288) + *(*(*(a1 + 32) + 8) + 24);
  *(v2 + 288) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134218240;
    v8 = v6;
    v9 = 2048;
    v10 = v3;
    _os_log_debug_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEBUG, "#D Written: %zu bytes, for a total of: %llu", &v7, 0x16u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t BasebandTransport::read(BasebandTransport *this, unsigned __int8 *a2, unint64_t a3, unsigned int *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = (this + 8);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke;
  v17[3] = &unk_29EE63C08;
  v17[5] = &v22;
  v17[6] = this;
  v17[4] = &v18;
  v26 = v17;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = this + 8;
  block[5] = &v26;
  v8 = this + 24;
  v7 = *(this + 3);
  if (*(v8 + 1))
  {
    dispatch_async_and_wait(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_sync(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  v10 = v19[3];
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v12 = v11();
    *(v23 + 24) = v12;
    if (v12)
    {
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 0x40000000;
      v16[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke_63;
      v16[3] = &__block_descriptor_tmp_64;
      v16[4] = this;
      v16[5] = a4;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v6, v16);
      goto LABEL_14;
    }

    v10 = v19[3];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v9 + 24) = 0;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    v13();
  }

LABEL_14:
  v14 = *(v23 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v14;
}

void sub_29705E4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4readEPhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    if (v3())
    {
      LOBYTE(v3) = *(v2 + 276) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *(*(a1[5] + 8) + 24) = v3 & 1;
  if (*(v2 + 276) == 1)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Explicit reads not allowed in async mode", v5, 2u);
    }
  }
}

uint64_t BasebandTransport::close(BasebandTransport *this)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  *(this + 58) = 0;
  v2 = this + 8;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN17BasebandTransport5closeEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_65;
  v9[4] = this;
  v14 = v9;
  block = MEMORY[0x29EDCA5F8];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_98;
  v19 = this + 8;
  v20 = &v14;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    dispatch_sync(v3, &block);
  }

  BasebandTransport::stopReader(this);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___ZN17BasebandTransport5closeEv_block_invoke_2;
  v8[3] = &unk_29EE63C70;
  v8[4] = &v10;
  v8[5] = this;
  v14 = v8;
  block = MEMORY[0x29EDCA5F8];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_98;
  v19 = v2;
  v20 = &v14;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    dispatch_sync(v5, &block);
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_29705E788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 224));
    *(v1 + 224) = 0;
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

uint64_t ___ZN17BasebandTransport5closeEv_block_invoke_2(uint64_t a1)
{
  result = (*(**(a1 + 40) + 48))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t BasebandTransport::operator*(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN17BasebandTransportdeEv_block_invoke;
  v5[3] = &unk_29EE63C98;
  v5[4] = &v6;
  v5[5] = a1;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v10;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t BasebandTransport::close_sync(BasebandTransport *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(this + 22);
  if (v2 && v2(this + 120))
  {
    *(this + 68) = 0;
    v3 = TelephonyUtilTransportFree();
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 184) = 0u;
    *(this + 25) = 0;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 1;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  BasebandTransport::asString(*(this + 12), __p);
  v5 = __p[0];
  v6 = "error";
  if (v10 >= 0)
  {
    v5 = __p;
  }

  if (v3)
  {
    v6 = "success";
  }

  *buf = 136315394;
  v12 = v5;
  v13 = 2080;
  v14 = v6;
  _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Transport close %s: %s", buf, 0x16u);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t BasebandTransport::startReader_sync(BasebandTransport *this)
{
  if (!*(this + 30))
  {
    v2 = *(this + 12);
    v3 = capabilities::radio::dal(this);
    if (v3)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v2 == 17)
      {
        v4 = 0x80000;
      }

      else if (v2 == 21 || v2 == 20)
      {
        v4 = 61440;
      }

      else
      {
        v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v2 == 10 && (v6 & 1) != 0)
        {
          v4 = 3584;
        }

        else if ((v2 - 19) > 5)
        {
          v4 = 0x8000;
        }

        else
        {
          v4 = qword_297224C48[v2 - 19];
        }
      }
    }

    *(this + 31) = v4;
    *(this + 30) = operator new[](v4);
    v7 = dispatch_queue_create("ipc.bb", 0);
    v8 = *(this + 32);
    *(this + 32) = v7;
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  *(this + 236) = 1;
  *(this + 276) = 1;
  BasebandTransport::queueRead_sync(this);
  return *(this + 236);
}

void BasebandTransport::queueRead_sync(BasebandTransport *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 33);
  if (v6)
  {
    dispatch_retain(*(this + 33));
    dispatch_group_enter(v6);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN17BasebandTransport14queueRead_syncEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_73;
  v8[4] = this;
  v8[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  dispatch_async(*(this + 32), v8);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 236);
  *(v1 + 236) = 0;
  *(v1 + 276) = 0;
  return result;
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = result;
    result = v2(v1 + 120);
    if (result)
    {
      if (*(*(*(v3 + 32) + 8) + 24) == 1)
      {
        v4 = *(v1 + 136);
        if (v4)
        {

          return v4(v1 + 120);
        }
      }
    }
  }

  return result;
}

void ___ZN17BasebandTransport14queueRead_syncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  BasebandTransport::read_sync(v1, &v3);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_29705EEA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandTransport::read_sync(uint64_t a1, NSObject **a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  v34 = v6;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4), (v35 = v8) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = 0;
  v9 = *(a1 + 128);
  if (v9)
  {
    v10 = v8;
    v11 = *(a1 + 240);
    v12 = *(a1 + 48);
    v13 = capabilities::radio::dal(v8);
    v14 = v13;
    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v13);
    if (v14)
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0x4000;
    }

    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v12 == 17)
      {
        v16 = 0x80000;
      }

      else if (v12 == 21 || v12 == 20)
      {
        v16 = 61440;
      }

      else
      {
        v17 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v12 == 10)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v16 = 3584;
        }

        else if ((v12 - 19) > 5)
        {
          v16 = 0x8000;
        }

        else
        {
          v16 = dword_297224C78[v12 - 19];
        }
      }
    }

    v19 = v9(a1 + 120, v11, v16, &v33, 0, 0xFFFFFFFFLL, 0);
    if (v33)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 0x40000000;
      v31[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke;
      v31[3] = &__block_descriptor_tmp_74;
      v31[4] = a1;
      v32 = v33;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v31);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_77;
      block[4] = a1;
      block[5] = v6;
      v28 = v10;
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      v21 = *a2;
      group = v21;
      if (v21)
      {
        dispatch_retain(v21);
        dispatch_group_enter(group);
      }

      v30 = v33;
      dispatch_sync(*(a1 + 96), block);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v22 = v28;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_78;
  v25[3] = &__block_descriptor_tmp_79;
  v25[4] = a1;
  v25[5] = v34;
  v26 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v25);
  v23 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v35;
  if (v35)
  {
    if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3)
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    (*(*v3 + 8))(v3, v2[30], *(a1 + 64), &__p);
    (*(v2[11] + 16))();
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = v2[30];
    v5 = *(a1 + 64);
    v6 = *(v2[11] + 16);

    v6();
  }
}

void sub_29705F428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BasebandTransport *___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_78(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 236) == 1)
  {
    return BasebandTransport::queueRead_sync(result);
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport12timerOn_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (!v6)
      {
LABEL_15:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v7 = *(v3 + 280);
      v8 = *(v3 + 320);
      v9 = *(v3 + 288) - *(v3 + 328);
      v11 = *(v3 + 288) == *(v3 + 328);
      *(v3 + 296) = v7 - v8;
      *(v3 + 304) = v9;
      v10 = (v3 + 272);
      v11 = v11 && v7 == v8;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        if (*v10 != 3)
        {
LABEL_12:
          v13 = *(v3 + 288);
          *(v3 + 312) = *v10;
          *(v3 + 328) = v13;
          *(v3 + 344) = *(v3 + 304);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 1174405120;
          block[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2;
          block[3] = &__block_descriptor_tmp_82;
          block[4] = v3;
          block[5] = v6;
          v16 = v4;
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(*(v3 + 96), block);
          v14 = v16;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }

          goto LABEL_15;
        }

        v12 = 1;
      }

      *v10 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 216);
  v10 = *(v5 + 344);
  v7 = *(v5 + 328);
  v9[0] = *(v5 + 312);
  v9[1] = v7;
  return (*(v6 + 16))(v6, v9, a3, a4, a5);
}

void BasebandTransport::getStatus(BasebandTransport *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAA0000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v4[0] = a2;
  v4[1] = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_108;
  block[4] = this + 8;
  block[5] = v4;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN17BasebandTransport9dumpStateEb_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  *(v2 + 296) = vsubq_s64(*(v2 + 280), *(v2 + 320));
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Parameters::toString((v2 + 48), __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(v2 + 40);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Status::toString((v2 + 272), __p);
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (*(a1 + 40) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (*(a1 + 40) == 1)
  {
LABEL_14:
    *(v2 + 272) = 0;
    *(v2 + 276) = 0;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 280) = 0u;
    *(v2 + 296) = 0u;
    *(v2 + 309) = 0;
    BasebandTransport::timerOn_sync(v2);
  }

LABEL_15:
  v6 = *MEMORY[0x29EDCA608];
}

void BasebandTransport::reportStatus(uint64_t a1, int a2, void **a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_87;
  v7[4] = a1;
  v9 = a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  aBlock = v4;
  v10 = v7;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_98;
  block[4] = a1 + 8;
  block[5] = &v10;
  v5 = *(a1 + 24);
  if (!*(a1 + 32))
  {
    dispatch_sync(v5, block);
    v6 = aBlock;
    if (!aBlock)
    {
      return;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v5, block);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }
}

void ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 232) = v1;
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 216);
  *(v3 + 216) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  BasebandTransport::timerOn_sync(v3);
}

void *__copy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::function<void ()(dispatch_workloop_s *)>::~function(uint64_t a1)
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

atomic_ullong *std::shared_ptr<BasebandTransportMAV>::shared_ptr[abi:ne200100]<BasebandTransportMAV,std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E259D0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
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
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
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

void sub_29705FC98(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV*)#1}::operator() const(BasebandTransportMAV*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BasebandTransportMAV *,std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV *)#1},std::allocator<BasebandTransportMAV>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransportMAV *,std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV *)#1},std::allocator<BasebandTransportMAV>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportMAVEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransportMAV> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportMAV>(BasebandTransportMAV*)::{lambda(BasebandTransportMAV*)#1}::operator() const(BasebandTransportMAV*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

atomic_ullong *std::shared_ptr<BasebandTransport>::shared_ptr[abi:ne200100]<BasebandTransport,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E25A20;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
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
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
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

void sub_29705FEC8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1}::operator() const(BasebandTransport*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1}::operator() const(BasebandTransport*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v4 = a1[5];
  v2 = *(a1 + 1);
  v3 = *(a1 + 3);
  (*(*a1 + 2))();
  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_297060090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }

    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = *(a1 + 4);
  v3 = a1[1];
  (*(*a1 + 2))();
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_297060174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  (*(*a1 + 2))();
  if ((*(a1 + 20) & 1) == 0)
  {
    free(a1[1]);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_297060244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E25A68;
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

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1E25AA8;
  return result;
}

uint64_t std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17BasebandTransport12openPCI_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17BasebandTransport12openPCI_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  result = *(v2 + 272);
  v5 = *(v2 + 288);
  *(v3 + 32) = *(v2 + 304);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

void CPMSModule::create(capabilities::abs *a1@<X0>, void *a2@<X8>)
{
  if (capabilities::abs::getCPMSVariant(a1) != 1)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A18B7680 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v11 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        *a2 = 0;
        a2[1] = 0;
        return;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
      v11 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "User-space CPMS not supported!", buf, 2u);
    goto LABEL_12;
  }

  *a2 = 0;
  a2[1] = 0;
  v4 = operator new(0x180uLL);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 1);
  v12[0] = v6;
  v12[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  CPMSModule::CPMSModule(v4, v12);
  v8 = operator new(0x20uLL);
  v8->__shared_owners_ = 0;
  p_shared_owners = &v8->__shared_owners_;
  v8->__vftable = &unk_2A1E25EC0;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v5;
  v10 = *(v5 + 10);
  if (!v10)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v5 + 9) = v5;
    *(v5 + 10) = v8;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v10->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v5 + 9) = v5;
    *(v5 + 10) = v8;
    std::__shared_weak_count::__release_weak(v10);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

LABEL_15:
  *a2 = v5;
  a2[1] = v8;
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2970607C8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<CPMSModule> ctu::SharedSynchronizable<CPMSModule>::make_shared_ptr<CPMSModule>(CPMSModule*)::{lambda(CPMSModule*)#1}::operator() const(CPMSModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_2970607F0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t CPMSModule::CPMSModule(uint64_t a1, uint64_t *a2)
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

  *a1 = &unk_2A1E25B60;
  ctu::OsLogContext::OsLogContext(v9, "com.apple.telephony.abm", "cpms.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("cpms.mod", initially_inactive, 0);
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

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 104, v10);
  MEMORY[0x29C26B020](v10);
  ctu::OsLogContext::~OsLogContext(v9);
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *a1 = &unk_2A1E25B60;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 173) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a1 + 288;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = a1 + 352;
  *(a1 + 368) = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  *(a1 + 376) = TelephonyBasebandCreateController();
  return a1;
}

void sub_297060AA0(_Unwind_Exception *a1)
{
  PowerBudget::~PowerBudget((v1 + 43));
  PowerBudget::~PowerBudget((v1 + 39));
  PowerBudget::~PowerBudget((v1 + 35));
  PowerBudget::~PowerBudget(v4);
  PowerBudget::~PowerBudget(v5);
  PowerBudget::~PowerBudget(v3);
  v7 = v1[21];
  v1[21] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v1 + 19));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v1 + 17));
  MEMORY[0x29C26B020](v1 + 13);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void CPMSModule::~CPMSModule(CPMSModule *this)
{
  *this = &unk_2A1E25B60;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v18, 2u);
  }

  v4 = *(this + 47);
  if (v4)
  {
    CFRelease(v4);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 344, *(this + 44));
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = this + 352;

  *(this + 46) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 344, *(this + 44));
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = this + 352;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 312, *(this + 40));
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = this + 320;

  *(this + 42) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 312, *(this + 40));
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = this + 320;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 280, *(this + 36));
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = this + 288;

  *(this + 38) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 280, *(this + 36));
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = this + 288;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 248, *(this + 32));
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = this + 256;

  *(this + 34) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 248, *(this + 32));
  v5 = *(this + 28);
  *(this + 31) = this + 256;
  *(this + 32) = 0;
  *(this + 33) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 216, v5);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = this + 224;

  *(this + 30) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 216, *(this + 28));
  v6 = *(this + 24);
  *(this + 27) = this + 224;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 184, v6);
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = this + 192;

  *(this + 26) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 184, *(this + 24));
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = this + 192;
  v7 = *(this + 21);
  *(this + 21) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 20);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 18);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  MEMORY[0x29C26B020](v2);
  v10 = *(this + 12);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 11);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 10);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v13 = *(this + 3);
  if (v13)
  {
    v14 = *(this + 4);
    v15 = *(this + 3);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(this + 3);
    }

    *(this + 4) = v13;
    operator delete(v15);
  }

  v17 = *(this + 2);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

{
  CPMSModule::~CPMSModule(this);

  operator delete(v1);
}

_WORD *CPMSModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void CPMSModule::shutdown(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::shutdown(dispatch::group_session)::$_0>(CPMSModule::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CPMSModule::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void CPMSModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v24, v25, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }
}

void CPMSModule::registerCommandHandlers_sync(CPMSModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_105:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_105;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_105;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&__dst, v7);
    v9 = __dst;
    __dst = 0uLL;
    v10 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&__dst + 1);
    if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18B7390;
  }

  v64 = v8;
  v65 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 96))(&v66, v8);
  v12 = v66;
  v66 = 0uLL;
  v13 = *(this + 18);
  *(this + 136) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(&v66 + 1);
  if (*(&v66 + 1) && !atomic_fetch_add((*(&v66 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    if (*(this + 17))
    {
LABEL_25:
      v16 = *MEMORY[0x29EDBE708];
      v17 = strlen(*MEMORY[0x29EDBE708]);
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

        p_dst = operator new(v20);
        *(&__dst + 1) = v18;
        v63 = v20 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v63) = v17;
        p_dst = &__dst;
        if (!v17)
        {
LABEL_34:
          *(p_dst + v18) = 0;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 3321888768;
          aBlock[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke;
          aBlock[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
          aBlock[4] = this;
          aBlock[5] = v4;
          v60 = v6;
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v21 = _Block_copy(aBlock);
          v61 = v21;
          Service::registerCommandHandler(this, &__dst, &v61);
          if (v21)
          {
            _Block_release(v21);
          }

          if (SHIBYTE(v63) < 0)
          {
            operator delete(__dst);
          }

          v22 = *MEMORY[0x29EDBF458];
          v23 = strlen(*MEMORY[0x29EDBF458]);
          if (v23 > 0x7FFFFFFFFFFFFFF7)
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

            v25 = operator new(v26);
            *(&__dst + 1) = v24;
            v63 = v26 | 0x8000000000000000;
            *&__dst = v25;
          }

          else
          {
            HIBYTE(v63) = v23;
            v25 = &__dst;
            if (!v23)
            {
LABEL_47:
              *(v25 + v24) = 0;
              v56[0] = MEMORY[0x29EDCA5F8];
              v56[1] = 3321888768;
              v56[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_4;
              v56[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
              v56[4] = this;
              v56[5] = v4;
              v57 = v6;
              atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v27 = _Block_copy(v56);
              v58 = v27;
              Service::registerCommandHandler(this, &__dst, &v58);
              if (v27)
              {
                _Block_release(v27);
              }

              if (SHIBYTE(v63) < 0)
              {
                operator delete(__dst);
              }

              v28 = *MEMORY[0x29EDBEB38];
              v29 = strlen(*MEMORY[0x29EDBEB38]);
              if (v29 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v30 = v29;
              if (v29 >= 0x17)
              {
                if ((v29 | 7) == 0x17)
                {
                  v32 = 25;
                }

                else
                {
                  v32 = (v29 | 7) + 1;
                }

                v31 = operator new(v32);
                *(&__dst + 1) = v30;
                v63 = v32 | 0x8000000000000000;
                *&__dst = v31;
              }

              else
              {
                HIBYTE(v63) = v29;
                v31 = &__dst;
                if (!v29)
                {
LABEL_60:
                  *(v31 + v30) = 0;
                  v53[0] = MEMORY[0x29EDCA5F8];
                  v53[1] = 3321888768;
                  v53[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_2;
                  v53[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
                  v53[4] = this;
                  v53[5] = v4;
                  v54 = v6;
                  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v33 = _Block_copy(v53);
                  v55 = v33;
                  Service::registerCommandHandler(this, &__dst, &v55);
                  if (v33)
                  {
                    _Block_release(v33);
                  }

                  if (SHIBYTE(v63) < 0)
                  {
                    operator delete(__dst);
                  }

                  v34 = *MEMORY[0x29EDBE688];
                  v35 = strlen(*MEMORY[0x29EDBE688]);
                  if (v35 > 0x7FFFFFFFFFFFFFF7)
                  {
                    std::string::__throw_length_error[abi:ne200100]();
                  }

                  v36 = v35;
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

                    v37 = operator new(v38);
                    *(&__dst + 1) = v36;
                    v63 = v38 | 0x8000000000000000;
                    *&__dst = v37;
                  }

                  else
                  {
                    HIBYTE(v63) = v35;
                    v37 = &__dst;
                    if (!v35)
                    {
LABEL_73:
                      *(v37 + v36) = 0;
                      v50[0] = MEMORY[0x29EDCA5F8];
                      v50[1] = 3321888768;
                      v50[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_3;
                      v50[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
                      v50[4] = this;
                      v50[5] = v4;
                      v51 = v6;
                      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v39 = _Block_copy(v50);
                      v52 = v39;
                      Service::registerCommandHandler(this, &__dst, &v52);
                      if (v39)
                      {
                        _Block_release(v39);
                      }

                      if (SHIBYTE(v63) < 0)
                      {
                        operator delete(__dst);
                      }

                      v40 = *MEMORY[0x29EDBE620];
                      v41 = strlen(*MEMORY[0x29EDBE620]);
                      if (v41 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v42 = v41;
                      if (v41 >= 0x17)
                      {
                        if ((v41 | 7) == 0x17)
                        {
                          v44 = 25;
                        }

                        else
                        {
                          v44 = (v41 | 7) + 1;
                        }

                        v43 = operator new(v44);
                        *(&__dst + 1) = v42;
                        v63 = v44 | 0x8000000000000000;
                        *&__dst = v43;
                      }

                      else
                      {
                        HIBYTE(v63) = v41;
                        v43 = &__dst;
                        if (!v41)
                        {
                          goto LABEL_86;
                        }
                      }

                      memmove(v43, v40, v42);
LABEL_86:
                      *(v43 + v42) = 0;
                      v47[0] = MEMORY[0x29EDCA5F8];
                      v47[1] = 3321888768;
                      v47[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_4;
                      v47[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
                      v47[4] = this;
                      v47[5] = v4;
                      v48 = v6;
                      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v45 = _Block_copy(v47);
                      v49 = v45;
                      Service::registerCommandHandler(this, &__dst, &v49);
                      if (v45)
                      {
                        _Block_release(v45);
                      }

                      if (SHIBYTE(v63) < 0)
                      {
                        operator delete(__dst);
                      }

                      if (v48)
                      {
                        std::__shared_weak_count::__release_weak(v48);
                      }

                      if (v51)
                      {
                        std::__shared_weak_count::__release_weak(v51);
                      }

                      if (v54)
                      {
                        std::__shared_weak_count::__release_weak(v54);
                      }

                      if (v57)
                      {
                        std::__shared_weak_count::__release_weak(v57);
                      }

                      if (v60)
                      {
                        std::__shared_weak_count::__release_weak(v60);
                      }

                      goto LABEL_103;
                    }
                  }

                  memmove(v37, v34, v36);
                  goto LABEL_73;
                }
              }

              memmove(v31, v28, v30);
              goto LABEL_60;
            }
          }

          memmove(v25, v22, v24);
          goto LABEL_47;
        }
      }

      memmove(p_dst, v16, v18);
      goto LABEL_34;
    }
  }

  else if (*(this + 17))
  {
    goto LABEL_25;
  }

  v46 = *(this + 13);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__dst) = 0;
    _os_log_error_impl(&dword_296FF7000, v46, OS_LOG_TYPE_ERROR, "Failed to create CPMS Command Driver", &__dst, 2u);
  }

LABEL_103:
  std::__shared_weak_count::__release_weak(v6);
}

void sub_297061B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::__shared_weak_count::__release_weak(v39);
  _Unwind_Resume(a1);
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[5];
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v9 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v9);
        if (!v8)
        {
          return;
        }
      }

      v11 = a1[5];
      v10 = a1[6];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        v12 = _Block_copy(*a3);
        v13 = v6[10];
        if (!v13)
        {
LABEL_23:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v12 = 0;
        v13 = v6[10];
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v14 = v6[9];
      v15 = std::__shared_weak_count::lock(v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = v15;
      v17 = operator new(0x20uLL);
      v18 = v17;
      *v17 = v11;
      v17[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v17[2] = v6;
      v17[3] = v12;
      v19 = v6[11];
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = operator new(0x18uLL);
      *v20 = v18;
      v20[1] = v14;
      v20[2] = v16;
      dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v10)
        {
          return;
        }
      }

      else
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        if (!v10)
        {
          return;
        }
      }

      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_4(void *a1, xpc_object_t *a2, const void **a3)
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

      value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE568]);
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      v12 = xpc::dyn_cast_or_default(&object, 0);
      xpc_release(object);
      v14 = a1[5];
      v13 = a1[6];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        v15 = _Block_copy(*a3);
        v16 = v7[10];
        if (!v16)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v15 = 0;
        v16 = v7[10];
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      v17 = v7[9];
      v18 = std::__shared_weak_count::lock(v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      v19 = v18;
      v20 = operator new(0x28uLL);
      v21 = v20;
      *v20 = v14;
      v20[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v20[2] = v7;
      *(v20 + 6) = v12;
      v20[4] = v15;
      v22 = v7[11];
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = operator new(0x18uLL);
      *v23 = v21;
      v23[1] = v17;
      v23[2] = v19;
      dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }
    }
  }
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_2(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[5];
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v9 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v9);
        if (!v8)
        {
          return;
        }
      }

      v11 = a1[5];
      v10 = a1[6];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        v12 = _Block_copy(*a3);
        v13 = v6[10];
        if (!v13)
        {
LABEL_23:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v12 = 0;
        v13 = v6[10];
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v14 = v6[9];
      v15 = std::__shared_weak_count::lock(v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = v15;
      v17 = operator new(0x20uLL);
      v18 = v17;
      *v17 = v11;
      v17[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v17[2] = v6;
      v17[3] = v12;
      v19 = v6[11];
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = operator new(0x18uLL);
      *v20 = v18;
      v20[1] = v14;
      v20[2] = v16;
      dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v10)
        {
          return;
        }
      }

      else
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        if (!v10)
        {
          return;
        }
      }

      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_3(void *a1, xpc_object_t *a2, const void **a3)
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

  v12 = a1[5];
  v11 = a1[6];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  if (v13)
  {
    xpc_retain(v13);
    v14 = *a3;
    if (*a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = xpc_null_create();
    v14 = *a3;
    if (*a3)
    {
LABEL_11:
      v15 = _Block_copy(v14);
      v16 = v7[10];
      if (!v16)
      {
LABEL_25:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_15;
    }
  }

  v15 = 0;
  v16 = v7[10];
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_15:
  v17 = v7[9];
  v18 = std::__shared_weak_count::lock(v16);
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  v20 = operator new(0x28uLL);
  v21 = v20;
  *v20 = v12;
  v20[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v20[2] = v7;
  v20[3] = v13;
  v22 = xpc_null_create();
  v21[4] = v15;
  v23 = v7[11];
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  v24 = operator new(0x18uLL);
  *v24 = v21;
  v24[1] = v17;
  v24[2] = v19;
  dispatch_async_f(v23, v24, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  xpc_release(v22);
  if (v11)
  {

    std::__shared_weak_count::__release_weak(v11);
  }
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_4(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[5];
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v9 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v9);
        if (!v8)
        {
          return;
        }
      }

      v10 = *a3;
      if (*a3)
      {
        v13 = 0;
        aBlock = _Block_copy(v10);
        CPMSModule::getCurrentPower(v6, &v13, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      else
      {
        v11 = *(v6 + 104);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "Expected response handler", buf, 2u);
        }
      }
    }
  }
}

void sub_2970626B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::getCurrentPower(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v6 = a1 + 72;
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 3221225472;
  v32[2] = ___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke;
  v32[3] = &unk_29EE63DB0;
  v32[5] = &v33;
  v32[6] = a1;
  v32[4] = &v37;
  v41 = v32;
  block = MEMORY[0x29EDCA5F8];
  v43 = 3221225472;
  v44 = ___ZNK3ctu20SharedSynchronizableI10CPMSModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v45 = &__block_descriptor_48_e5_v8__0l;
  v46 = a1 + 72;
  v47 = &v41;
  v8 = a1 + 88;
  v7 = *(a1 + 88);
  if (*(v8 + 8))
  {
    dispatch_async_and_wait(v7, &block);
    if (*(v38 + 24) != 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_sync(v7, &block);
    if (*(v38 + 24) != 1)
    {
      goto LABEL_28;
    }
  }

  if (*(v34 + 24) == 1)
  {
    v9 = *(a1 + 80);
    if (!v9 || (v10 = *(a1 + 72), (v11 = std::__shared_weak_count::lock(v9)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v12 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *(a1 + 136);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke_2;
    aBlock[3] = &__block_descriptor_72_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE64c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_e670_v32__0_BudgetData__map_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int___std::less_abm::BasebandCPMSPowerBudgetScale___std::allocator_std::pair_const_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int________tree_std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int____std::__map_value_compare_abm::BasebandCPMSPowerBudgetScale__std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int____std::less_abm::BasebandCPMSPowerBudgetScale____std::allocator_std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int______v___tree_end_node_std::__tree_node_base_void________v_Q___8l;
    v14 = *a2;
    aBlock[4] = a1;
    group = v14;
    if (v14)
    {
      dispatch_retain(v14);
      dispatch_group_enter(group);
    }

    v27 = v10;
    v28 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = *a3;
    if (*a3)
    {
      v15 = _Block_copy(v15);
    }

    v29 = v15;
    v16 = _Block_copy(aBlock);
    v17 = *(a1 + 88);
    if (v17)
    {
      dispatch_retain(v17);
    }

    v30 = v16;
    object = v17;
    (*(*v13 + 40))(v13, &v30);
    if (object)
    {
      dispatch_release(object);
    }

    if (v30)
    {
      _Block_release(v30);
    }

    if (v29)
    {
      _Block_release(v29);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    std::__shared_weak_count::__release_weak(v12);
    goto LABEL_40;
  }

LABEL_28:
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = ___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke_64;
  v24[3] = &unk_29EE63DB0;
  v24[4] = &v37;
  v24[5] = &v33;
  v24[6] = a1;
  v41 = v24;
  block = MEMORY[0x29EDCA5F8];
  v43 = 3221225472;
  v44 = ___ZNK3ctu20SharedSynchronizableI10CPMSModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v45 = &__block_descriptor_48_e5_v8__0l;
  v46 = v6;
  v47 = &v41;
  v18 = *(a1 + 88);
  if (*(a1 + 96))
  {
    dispatch_async_and_wait(v18, &block);
    if (!*a3)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_sync(v18, &block);
    if (!*a3)
    {
      goto LABEL_40;
    }
  }

  NSDict = PowerBudget::getNSDict((a1 + 344));
  ctu::cf_to_xpc(&v41, NSDict, v20);
  v21 = v41;
  block = v41;
  v22 = MEMORY[0x29EDCAA00];
  if (v41 && MEMORY[0x29C26CE60](v41) == v22)
  {
    xpc_retain(v21);
  }

  else
  {
    v21 = xpc_null_create();
    block = v21;
  }

  xpc_release(v41);
  if (MEMORY[0x29C26CE60](v21) == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = -534716416;
  }

  LODWORD(v41) = v23;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v41, &block);
  xpc_release(block);
LABEL_40:
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void sub_297062B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_group_t group, uint64_t a22, std::__shared_weak_count *a23, void *aBlock, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  dispatch::callback<void({block_pointer})(BudgetData)>::~callback(&a25);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::__shared_weak_count::__release_weak(v34);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v35 - 168), 8);
  _Unwind_Resume(a1);
}

void CPMSModule::registerEventHandlers_sync(CPMSModule *this)
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_62:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_62;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_62;
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

    p_dst = operator new(v11);
    *(&__dst + 1) = v9;
    v35 = v11 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v35) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E25F70;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v41 = v12;
  Service::registerEventHandler(this, &__dst, v40);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

  if (v41)
  {
    (*(*v41 + 40))(v41);
  }

  if (SHIBYTE(v35) < 0)
  {
LABEL_56:
    operator delete(__dst);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBF6A0];
  v14 = strlen(*MEMORY[0x29EDBF6A0]);
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
    *(&__dst + 1) = v15;
    v35 = v17 | 0x8000000000000000;
    *&__dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v35) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E25FF0;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v39 = v18;
  Service::registerEventHandler(this, &__dst, v38);
  if (v39 == v38)
  {
    (*(*v39 + 32))(v39);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

  if (v39)
  {
    (*(*v39 + 40))();
  }

  if (SHIBYTE(v35) < 0)
  {
LABEL_58:
    operator delete(__dst);
  }

LABEL_32:
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
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__dst + 1) = v21;
    v35 = v23 | 0x8000000000000000;
    *&__dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v35) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E26070;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v37 = v24;
  Service::registerEventHandler(this, &__dst, v36);
  if (v37 == v36)
  {
    (*(*v37 + 32))(v37);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_60;
  }

  if (v37)
  {
    (*(*v37 + 40))();
  }

  if (SHIBYTE(v35) < 0)
  {
LABEL_60:
    operator delete(__dst);
  }

LABEL_45:
  Service::eventsOn(this);
  if ((config::hw::watch(v25) & 1) == 0)
  {
    v26 = *(this + 17);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN10CPMSModule26registerEventHandlers_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e670_v32__0_BudgetData__map_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int___std::less_abm::BasebandCPMSPowerBudgetScale___std::allocator_std::pair_const_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int________tree_std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int____std::__map_value_compare_abm::BasebandCPMSPowerBudgetScale__std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int____std::less_abm::BasebandCPMSPowerBudgetScale____std::allocator_std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int______v___tree_end_node_std::__tree_node_base_void________v_Q___8l;
    aBlock[4] = this;
    aBlock[5] = v4;
    v31 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v27 = _Block_copy(aBlock);
    v28 = *(this + 11);
    if (v28)
    {
      dispatch_retain(v28);
    }

    v32 = v27;
    object = v28;
    (*(*v26 + 32))(v26, &v32);
    if (object)
    {
      dispatch_release(object);
    }

    if (v32)
    {
      _Block_release(v32);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  std::__shared_weak_count::__release_weak(v6);
  v29 = *MEMORY[0x29EDCA608];
}

void sub_29706318C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10CPMSModule26registerEventHandlers_syncEv_block_invoke(void *a1, void **a2)
{
  v24 = *MEMORY[0x29EDCA608];
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
          goto LABEL_16;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      v18 = &v19;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      if (&v18 != a2)
      {
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v18, *a2, a2 + 1);
      }

      v9 = *(v5 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        PowerBudget::to_string(&v18, __p);
        if (v17 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136315138;
        v23 = v10;
        _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Baseband power budget need is %s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v12 = &v13;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v12, v18, &v19);
      v15 = [v21 copy];
      CPMSModule::reportPowerBudgetNeed_sync(v5, &v12);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v12, v13);
      v13 = 0;
      v14 = 0;
      v12 = &v13;

      v15 = 0;
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v12, v13);
      v13 = 0;
      v14 = 0;
      v12 = &v13;
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19);
      v19 = 0;
      v20 = 0;
      v18 = &v19;

      v21 = 0;
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19);
    }
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_297063458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PowerBudget::~PowerBudget(va);
  _Unwind_Resume(a1);
}

void CPMSModule::reportPowerBudgetNeed_sync(uint64_t a1, id *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 180);
  v5 = *(a1 + 104);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 != 1)
  {
    if (v6)
    {
      *__p = 138412290;
      *&__p[4] = PowerBudget::getNSDict(a2);
      _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Reporting to CPMS with power budget need %@", __p, 0xCu);
    }

    v8 = [*(a1 + 112) copyPowerBudgetForRequest:PowerBudget::getNSDict(a2) forClient:4 error:0];
    if (!v8)
    {
      v16 = *(a1 + 104);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_error_impl(&dword_296FF7000, v16, OS_LOG_TYPE_ERROR, "Reporting to CPMS with power budget need failed", __p, 2u);
      }

      goto LABEL_29;
    }

    v9 = (a1 + 184);
    PowerBudget::fill((a1 + 184), v8);
    v10 = *(a1 + 104);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT) && ((PowerBudget::to_string((a1 + 184), __p), v32 >= 0) ? (v11 = __p) : (v11 = *__p), *buf = 136315138, v34 = v11, _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEFAULT, "#I CPMS responded with power budget allocation %s", buf, 0xCu), v32 < 0))
    {
      operator delete(*__p);
      v25 = &v26;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      if (v9 == &v25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = &v26;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      if (v9 == &v25)
      {
LABEL_18:
        v28 = [*(a1 + 208) copy];
        v12 = [*(a1 + 112) acknowledgePowerBudget:PowerBudget::getNSDict(&v25) forClientId:4 error:0];
        v13 = *(a1 + 104);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          NSDict = PowerBudget::getNSDict(&v25);
          v15 = "failed";
          if (v12)
          {
            v15 = "succeeded";
          }

          *__p = 136315394;
          *&__p[4] = v15;
          v30 = 2112;
          v31 = NSDict;
          _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I Acked CPMS %s for power budget %@", __p, 0x16u);
        }

        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v25, v26);
        v26 = 0;
        v27 = 0;
        v25 = &v26;

        v28 = 0;
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v25, v26);
        v26 = 0;
        v27 = 0;
        v24 = 0;
        v25 = &v26;
        *(&v22 + 1) = 0;
        v23 = 0;
        *&v22 = &v22 + 8;
        if (v9 != &v22)
        {
          std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v22, *(a1 + 184), (a1 + 192));
        }

        v24 = [*(a1 + 208) copy];
        CPMSModule::evaluateBrickMode_sync(a1, &v22);
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v22, *(&v22 + 1));
        *(&v22 + 1) = 0;
        v23 = 0;
        *&v22 = &v22 + 8;

        v24 = 0;
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v22, *(&v22 + 1));
        *(&v22 + 1) = 0;
        v23 = 0;
        v21 = 0;
        *&v22 = &v22 + 8;
        v19 = 0;
        v20 = 0;
        v18 = &v19;
        if (v9 != &v18)
        {
          std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v18, *(a1 + 184), (a1 + 192));
        }

        v21 = [*(a1 + 208) copy];
        CPMSModule::sendPowerBudgetToBB_sync(a1, &v18);
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19);
        v19 = 0;
        v20 = 0;
        v18 = &v19;

        v21 = 0;
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19);
        v19 = 0;
        v20 = 0;
        v18 = &v19;
LABEL_29:

        goto LABEL_30;
      }
    }

    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v25, *(a1 + 184), (a1 + 192));
    goto LABEL_18;
  }

  if (v6)
  {
    PowerBudget::to_string(a2, __p);
    if (v32 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    *buf = 136315138;
    v34 = v7;
    _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Brick mode is still enabled; ignoring power budget request for %s", buf, 0xCu);
    if (v32 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_30:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_2970638F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dispatch::callback<void({block_pointer})(BudgetData)>::~callback(uint64_t a1)
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

void CPMSModule::getErrorMsg(NSError *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 13;
  strcpy(a2, "Unknown error");
  if (a1)
  {
    v5 = [(NSError *)a1 localizedDescription];
    if ([(NSError *)a1 localizedFailureReason])
    {
      v6 = [(NSError *)a1 localizedFailureReason];
    }

    else
    {
      v6 = [objc_msgSend(MEMORY[0x29EDB9F48] "mainBundle")];
    }

    std::string::__assign_external(a2, [objc_msgSend(MEMORY[0x29EDBA0F8] stringWithFormat:@"%@: %@", v5, v6), "UTF8String"]);
  }
}

void sub_297063AB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::evaluatePowerBudgetNeed_sync(CPMSModule *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v4 = "false";
    if (*(this + 179))
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    v6 = *(this + 176);
    if (*(this + 177))
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    *buf = 136315650;
    v29 = v5;
    if (v6)
    {
      v4 = "true";
    }

    v30 = 2080;
    v31 = v7;
    v32 = 2080;
    v33 = v4;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Evaluating power budget need; IsConnected(debounce)=%s, IsOnline=%s IsReady=%s", buf, 0x20u);
  }

  v8 = capabilities::abs::supportsCPMSConnectedState(v3);
  if (v8 && *(this + 179) == 1 && *(this + 176) == 1 && *(this + 177) == 1)
  {
    v9 = v26;
    v26[0] = 0;
    v26[1] = 0;
    v25 = v26;
    v27 = 0;
    if ((this + 248) != &v25)
    {
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v25, *(this + 31), this + 32);
    }

    v27 = [*(this + 34) copy];
    v10 = &v25;
    CPMSModule::reportPowerBudgetNeed_sync(this, &v25);
  }

  else if (*(this + 176) == 1)
  {
    if (*(this + 177) == 1)
    {
      v11 = capabilities::abs::supportsCPMSConnectedState(v8);
      v9 = v23;
      v12 = 248;
      if (v11)
      {
        v12 = 280;
      }

      v13 = this + v12;
      v23[0] = 0;
      v23[1] = 0;
      v22 = v23;
      v24 = 0;
      if ((this + v12) != &v22)
      {
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v22, *v13, v13 + 1);
      }

      v24 = [*(v13 + 3) copy];
      v10 = &v22;
      CPMSModule::reportPowerBudgetNeed_sync(this, &v22);
    }

    else
    {
      v9 = v20;
      v20[0] = 0;
      v20[1] = 0;
      v19 = v20;
      v21 = 0;
      if ((this + 312) != &v19)
      {
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v19, *(this + 39), this + 40);
      }

      v21 = [*(this + 42) copy];
      v10 = &v19;
      CPMSModule::reportPowerBudgetNeed_sync(this, &v19);
    }
  }

  else
  {
    v9 = &v16;
    v16 = 0;
    v17 = 0;
    v15 = &v16;
    v18 = 0;
    if ((this + 312) != &v15)
    {
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v15, *(this + 39), this + 40);
    }

    v18 = [*(this + 42) copy];
    v10 = &v15;
    CPMSModule::reportPowerBudgetNeed_sync(this, &v15);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v10, v10[1]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = v9;

  v10[3] = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v10, v10[1]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = v9;
  v14 = *MEMORY[0x29EDCA608];
}

void sub_297063D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PowerBudget::~PowerBudget(va);
  _Unwind_Resume(a1);
}

void sub_297063DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PowerBudget::~PowerBudget(va);
  _Unwind_Resume(a1);
}

void sub_297063DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PowerBudget::~PowerBudget(va);
  _Unwind_Resume(a1);
}

void sub_297063E48(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::debounceConnectedState_sync(CPMSModule *this)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (*(this + 178))
    {
      v7 = "connected";
    }

    else
    {
      v7 = "idle";
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Baseband is in %s state", buf, 0xCu);
    if (*(this + 178) == 1)
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 178) == 1)
  {
LABEL_3:
    v4 = *(this + 21);
    if (v4)
    {
      v5 = *(this + 13);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEBUG, "#D Cancelling idle timer", buf, 2u);
        v4 = *(this + 21);
      }

      (*(*v4 + 16))(v4);
      v6 = *(this + 21);
      *(this + 21) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    if ((*(this + 179) & 1) == 0)
    {
      *(this + 179) = 1;
      CPMSModule::evaluatePowerBudgetNeed_sync(this);
    }

    goto LABEL_33;
  }

  v8 = capabilities::abs::CPMSDebounceTimer(v3);
  v9 = *(this + 13);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_debug_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEBUG, "#D Starting idle timer for %lld secs", buf, 0xCu);
    v10 = *(this + 10);
    if (!v10)
    {
LABEL_35:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v10 = *(this + 10);
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  v11 = *(this + 9);
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_35;
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 19);
  v25 = 16;
  strcpy(__p, "Idle state timer");
  v15 = *(this + 11);
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN10CPMSModule27debounceConnectedState_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e5_v8__0l;
  aBlock[4] = this;
  aBlock[5] = v11;
  v21 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v22 = _Block_copy(aBlock);
  ctu::TimerService::createOneShotTimer(v14, __p, 0, 1000000 * v8, &object, &v22);
  v16 = *buf;
  *buf = 0;
  v17 = *(this + 21);
  *(this + 21) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = *buf;
    *buf = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v25 < 0)
  {
    operator delete(*__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  std::__shared_weak_count::__release_weak(v13);
LABEL_33:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_297064228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::TimerService::createOneShotTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v10 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v6;
  *a6 = 0;
  (*(*a1 + 16))(a1, __p, a3, a4, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_297064374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void ___ZN10CPMSModule27debounceConnectedState_syncEv_block_invoke(void *a1)
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
      if (!a1[5])
      {
        goto LABEL_7;
      }

      v6 = *(v3 + 104);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_debug_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEBUG, "#D Idle timer expired", v7, 2u);
        if (*(v3 + 178))
        {
LABEL_7:
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          return;
        }
      }

      else if (*(v3 + 178))
      {
        goto LABEL_7;
      }

      *(v3 + 179) = 0;
      CPMSModule::evaluatePowerBudgetNeed_sync(v3);
      goto LABEL_7;
    }
  }
}

void sub_2970644C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CPMSModule::sendPowerBudgetToBB_sync(uint64_t a1, void **a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 180);
  if ((v3 & 1) == 0 && *(a1 + 176) == 1 && *(a1 + 177) == 1)
  {
    v4 = *(a1 + 80);
    if (!v4 || (v6 = *(a1 + 72), (v7 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9 = a2;
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v8);
      v9 = a2;
    }

    v10 = *(a1 + 136);
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    if (&v29 != v9)
    {
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v29, *v9, v9 + 1);
      v9 = a2;
    }

    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3321888768;
    v21[2] = ___ZN10CPMSModule24sendPowerBudgetToBB_syncE11PowerBudget_block_invoke;
    v21[3] = &__block_descriptor_88_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c17_ZTS11PowerBudget_e44_v16__0_CFSharedRef___CFError______CFError__8l;
    v21[4] = a1;
    v21[5] = v6;
    v22 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v23 = &v24;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if (&v23 != v9)
    {
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v23, *v9, v9 + 1);
      v9 = a2;
    }

    v26 = [v9[3] copy];
    v11 = _Block_copy(v21);
    v12 = *(a1 + 88);
    if (v12)
    {
      dispatch_retain(v12);
    }

    aBlock = v11;
    object = v12;
    (*(*v10 + 24))(v10, &v29, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v29, v30);
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v23, v24);
    v24 = 0;
    v25 = 0;
    v23 = &v24;

    v26 = 0;
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v23, v24);
    v24 = 0;
    v25 = 0;
    v23 = &v24;
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    std::__shared_weak_count::__release_weak(v8);
    v13 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v14 = *(a1 + 104);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = "false";
      if (v3)
      {
        v17 = "true";
      }

      else
      {
        v17 = "false";
      }

      v18 = *(a1 + 177);
      if (*(a1 + 176))
      {
        v19 = "true";
      }

      else
      {
        v19 = "false";
      }

      *buf = 136315650;
      v33 = v17;
      v34 = 2080;
      if (v18)
      {
        v16 = "true";
      }

      v35 = v19;
      v36 = 2080;
      v37 = v16;
      _os_log_debug_impl(&dword_296FF7000, v14, OS_LOG_TYPE_DEBUG, "#D Not sending budget to BB due to this condition: BrickMode: %s, Baseband is ready: %s, Baseband is online: %s", buf, 0x20u);
      v20 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v15 = *MEMORY[0x29EDCA608];
    }
  }
}

void sub_297064818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10CPMSModule24sendPowerBudgetToBB_syncE11PowerBudget_block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x29EDCA608];
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
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          if (*a2)
          {
            v10 = "failed";
          }

          else
          {
            v10 = "succeeded";
          }

          PowerBudget::to_string((a1 + 7), __p);
          if (v14 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          *buf = 136315394;
          v16 = v10;
          v17 = 2080;
          v18 = v11;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Sent power budget to baseband %s for %s", buf, 0x16u);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c17_ZTS11PowerBudget(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (a2 != a1)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>((a1 + 56), *(a2 + 56), (a2 + 64));
  }

  result = [*(a2 + 80) copy];
  *(a1 + 80) = result;
  return result;
}

void sub_297064A84(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v2, *(v1 + 64));
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 56) = v3;
  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c17_ZTS11PowerBudget(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = a1 + 56;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1 + 56, *(a1 + 64));
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;

  *(a1 + 80) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v3, *(a1 + 64));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = v2;
  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(uint64_t a1)
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

void CPMSModule::ackPowerBudgetToCPMS_sync(uint64_t a1, id *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = [*(a1 + 112) acknowledgePowerBudget:PowerBudget::getNSDict(a2) forClientId:4 error:0];
  v5 = *(a1 + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = "succeeded";
    }

    else
    {
      v6 = "failed";
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 2112;
    NSDict = PowerBudget::getNSDict(a2);
    _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Acked CPMS %s for power budget %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t CPMSModule::initPowerConfig_sync(id *this)
{
  v53 = *MEMORY[0x29EDCA608];
  memset(&__p, 170, sizeof(__p));
  CPMSModule::getCPMSBudgetPlistPath(this, &__p);
  cf = 0xAAAAAAAAAAAAAAAALL;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = __p;
  }

  util::readPlistToCFDictionary(&v45, &cf);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v2 = cf;
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v41 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v4)
  {
    v5 = *v42;
    v33 = *MEMORY[0x29EDC0AB8];
    v34 = *MEMORY[0x29EDC0AB0];
    v35 = *MEMORY[0x29EDC0AA0];
    v32 = 5000;
    v6 = *MEMORY[0x29EDC0AA8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v42 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        if ([v8 isEqualToString:@"CPMSPowerTimeScale1s"])
        {
          CPMSModule::initPowerConfig_sync(void)::$_1::operator()(this, v6, [v2 valueForKey:v8], v3);
        }

        else if ([v8 isEqualToString:@"CPMSPowerTimeScale100ms"])
        {
          CPMSModule::initPowerConfig_sync(void)::$_1::operator()(this, v35, [v2 valueForKey:v8], v3);
        }

        else if ([v8 isEqualToString:@"CPMSPowerTimeScaleInstantaneous"])
        {
          CPMSModule::initPowerConfig_sync(void)::$_1::operator()(this, v34, [v2 valueForKey:v8], v3);
        }

        else if ([v8 isEqualToString:@"CPMSPowerTimeScaleThermal"])
        {
          CPMSModule::initPowerConfig_sync(void)::$_1::operator()(this, v33, [v2 valueForKey:v8], v3);
        }

        else if ([v8 isEqualToString:@"CPMSPowerBudgetPeriodms"])
        {
          v32 = [objc_msgSend(v2 valueForKey:{v8), "intValue"}];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v4);
  }

  else
  {
    v32 = 5000;
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this + 23, this[39], this + 40);

  this[26] = [this[42] copy];
  v9 = this[13];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_msgSend(v3 "description")];
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Power budget config to be registered with CPMS %s", buf, 0xCu);
    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string((this + 27), buf);
    if (v49 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    *v50 = 136315138;
    v51 = v11;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Min default budget %s", v50, 0xCu);
    if (v49 < 0)
    {
      operator delete(*buf);
    }

    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string((this + 31), buf);
    if (v49 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    *v50 = 136315138;
    v51 = v12;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Max default budget %s", v50, 0xCu);
    if (v49 < 0)
    {
      operator delete(*buf);
    }

    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string((this + 35), buf);
    if (v49 >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    *v50 = 136315138;
    v51 = v13;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Idle default budget %s", v50, 0xCu);
    if (v49 < 0)
    {
      operator delete(*buf);
    }

    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string((this + 39), buf);
    if (v49 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    *v50 = 136315138;
    v51 = v14;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Low default budget %s", v50, 0xCu);
    if (v49 < 0)
    {
      operator delete(*buf);
    }

    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Power budget update period (ms) %u", buf, 8u);
    v9 = this[13];
  }

  v15 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    v16 = capabilities::abs::supportsCPMSConnectedState(v15);
    v17 = " not";
    if (v16)
    {
      v17 = "";
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Connected state evaluation is%s supported", buf, 0xCu);
  }

  v18 = this[10];
  if (!v18 || (v19 = this[9], (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = v20;
  p_shared_weak_owners = &v20->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v21);
  }

  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 3321888768;
  v39[2] = ___ZN10CPMSModule20initPowerConfig_syncEv_block_invoke;
  v39[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e22_v16__0__NSDictionary_8l;
  v39[4] = this;
  v39[5] = v19;
  v40 = v21;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  this[15] = v39;
  v36 = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3321888768;
  v37[2] = ___ZN10CPMSModule20initPowerConfig_syncEv_block_invoke_38;
  v37[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e19___NSDictionary_8__0l;
  v37[4] = this;
  v37[5] = v19;
  v38 = v21;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  this[16] = v37;
  v23 = objc_alloc_init(MEMORY[0x29EDC0A98]);
  [v23 setClientId:4];
  [v23 setPowerLevels:v3];
  [v23 setIsContinuous:1];
  [v23 setNotificationCallback:this[15]];
  [v23 setGetCurrentPower:this[16]];
  [v23 setPowerBudgetUpdateMinimumPeriod:v32];
  v24 = [this[14] registerClientWithDescription:v23 error:&v36];
  v25 = v24;
  v26 = v36;
  if (v36)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  if ((v27 & 1) == 0)
  {
    v28 = this[13];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      CPMSModule::getErrorMsg(v26, buf);
      v31 = v49 >= 0 ? buf : *buf;
      *v50 = 136315138;
      v51 = v31;
      _os_log_error_impl(&dword_296FF7000, v28, OS_LOG_TYPE_ERROR, "Failed to register CPMS: %s", v50, 0xCu);
      if (v49 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  std::__shared_weak_count::__release_weak(v21);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v25;
}

void sub_2970654A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::getCPMSBudgetPlistPath(CPMSModule *this@<X0>, std::string::size_type *a2@<X8>)
{
  v95 = *MEMORY[0x29EDCA608];
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = a2 + 1;
  a2[2] = 0xAAAAAAAAAAAAAAAALL;
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x48uLL);
  strcpy(v4, "/System/Library/PrivateFrameworks/AppleBasebandManager.framework/");
  qmemcpy(v90, "anager.frameworks/AppleBasebandMPrivateFramework/System/Library/", sizeof(v90));
  v5 = operator new(0x90uLL);
  strcpy(v5 + 64, "/cpms.budgets");
  *v5 = v90[3];
  *(v5 + 1) = v90[2];
  *(v5 + 2) = v90[1];
  *(v5 + 3) = v90[0];
  operator delete(v4);
  __p.__r_.__value_.__r.__words[0] = v5;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_297224CB0;
  qmemcpy(v5 + 77, ".override.", 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = 87;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 87;
  }

  v5[87] = 0;
  v92 = __p;
  memset(&__p, 0, sizeof(__p));
  v7 = capabilities::radio::product(v6);
  std::to_string(&v91, v7);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v91;
  }

  else
  {
    v8 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v91.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v92, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 17) < 6)
    {
      v13 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 6;
      p_buf = &buf;
      v15 = 22;
LABEL_16:
      v17 = 2 * v15;
      if (v13 > 2 * v15)
      {
        v17 = v13;
      }

      if ((v17 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v17 | 7) + 1;
      }

      if (v17 >= 0x17)
      {
        v16 = v18;
      }

      else
      {
        v16 = 23;
      }

      v19 = v15 == 22;
      goto LABEL_25;
    }

    v24 = &buf;
LABEL_32:
    v25 = v24 + v12;
    *v25 = 1768714286;
    *(v25 + 2) = 29811;
    v26 = v12 + 6;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      buf.__r_.__value_.__l.__size_ = v12 + 6;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v26 & 0x7F;
    }

    v23 = v24 + v26;
    goto LABEL_36;
  }

  v12 = buf.__r_.__value_.__l.__size_;
  v15 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v15 - buf.__r_.__value_.__l.__size_ >= 6)
  {
    v24 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_32;
  }

  v16 = 0x7FFFFFFFFFFFFFF7;
  v13 = buf.__r_.__value_.__l.__size_ + 6;
  if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 6 - v15)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_buf = buf.__r_.__value_.__r.__words[0];
  if (v15 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_16;
  }

  v19 = 0;
LABEL_25:
  v20 = operator new(v16);
  v21 = v20;
  if (v12)
  {
    memmove(v20, p_buf, v12);
  }

  v22 = v21 + v12;
  *v22 = 1768714286;
  *(v22 + 4) = 29811;
  if (!v19)
  {
    operator delete(p_buf);
  }

  buf.__r_.__value_.__l.__size_ = v13;
  buf.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v21;
  v23 = (v21 + v13);
LABEL_36:
  *v23 = 0;
  *a2 = buf;
  memset(&buf, 0, sizeof(buf));
  if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_48:
    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_49;
  }

  operator delete(v91.__r_.__value_.__l.__data_);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_48;
  }

LABEL_38:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_49:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_39:
  v27 = *(a2 + 23);
  if (v27 < 0)
  {
    v28 = *a2;
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 23);
  }

  else
  {
    v29 = a2[1];
  }

  v30 = ctu::fs::file_exists();
  if (v30)
  {
    goto LABEL_141;
  }

  if (!config::hw::watch(v30))
  {
    v33 = operator new(0x48uLL);
    v33[32] = 47;
    *v33 = v90[3];
    *(v33 + 1) = v90[2];
    *(v33 + 2) = v90[1];
    *(v33 + 3) = v90[0];
    v34 = operator new(0x90uLL);
    strcpy(v34 + 64, "/cpms.budgets");
    *v34 = v90[3];
    *(v34 + 1) = v90[2];
    *(v34 + 2) = v90[1];
    *(v34 + 3) = v90[0];
    operator delete(v33);
    v92.__r_.__value_.__r.__words[0] = v34;
    *&v92.__r_.__value_.__r.__words[1] = xmmword_297224CB0;
    v47 = v92.__r_.__value_.__l.__size_;
    v48 = (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v48 - v92.__r_.__value_.__l.__size_ >= 7)
    {
      v62 = v92.__r_.__value_.__r.__words[0];
      v63 = v92.__r_.__value_.__r.__words[0] + v92.__r_.__value_.__l.__size_;
      *v63 = 1752197422;
      *(v63 + 6) = 101;
      *(v63 + 4) = 28271;
      v64 = v47 + 7;
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        v92.__r_.__value_.__l.__size_ = v47 + 7;
      }

      else
      {
        *(&v92.__r_.__value_.__s + 23) = v64 & 0x7F;
      }

      v58 = (v62 + v64);
    }

    else
    {
      v49 = 0x7FFFFFFFFFFFFFF7;
      v50 = v92.__r_.__value_.__l.__size_ + 7;
      if (0x7FFFFFFFFFFFFFF7 - (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v92.__r_.__value_.__l.__size_ + 7 - v48)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v51 = v92.__r_.__value_.__r.__words[0];
      if (v48 >= 0x3FFFFFFFFFFFFFF3)
      {
        v54 = 0;
      }

      else
      {
        v52 = 2 * v48;
        if (v50 > 2 * v48)
        {
          v52 = v92.__r_.__value_.__l.__size_ + 7;
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
          v49 = v53;
        }

        else
        {
          v49 = 23;
        }

        v54 = v48 == 22;
      }

      v55 = operator new(v49);
      v56 = v55;
      if (v47)
      {
        memmove(v55, v51, v47);
      }

      v57 = v56 + v47;
      *v57 = 1752197422;
      *(v57 + 6) = 101;
      *(v57 + 4) = 28271;
      if (!v54)
      {
        operator delete(v51);
      }

      v92.__r_.__value_.__l.__size_ = v50;
      v92.__r_.__value_.__r.__words[2] = v49 | 0x8000000000000000;
      v92.__r_.__value_.__r.__words[0] = v56;
      v58 = (v56 + v50);
    }

    *v58 = 0;
    buf = v92;
    memset(&v92, 0, sizeof(v92));
    v65 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v65 = buf.__r_.__value_.__l.__size_;
      v73 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v73 - buf.__r_.__value_.__l.__size_ >= 6)
      {
        goto LABEL_130;
      }

      v69 = 0x7FFFFFFFFFFFFFF7;
      v66 = buf.__r_.__value_.__l.__size_ + 6;
      if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 6 - v73)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v67 = buf.__r_.__value_.__r.__words[0];
      if (v73 >= 0x3FFFFFFFFFFFFFF3)
      {
        v72 = 0;
        goto LABEL_125;
      }
    }

    else
    {
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 17) >= 6)
      {
LABEL_112:
        v74 = &buf;
LABEL_131:
        v81 = v74 + v65;
        *v81 = 1768714286;
        *(v81 + 2) = 29811;
        v82 = v65 + 6;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          buf.__r_.__value_.__l.__size_ = v65 + 6;
        }

        else
        {
          *(&buf.__r_.__value_.__s + 23) = v82 & 0x7F;
        }

        v80 = v74 + v82;
        goto LABEL_135;
      }

      v66 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 6;
      v67 = &buf;
      v73 = 22;
    }

    v75 = 2 * v73;
    if (v66 > 2 * v73)
    {
      v75 = v66;
    }

    if ((v75 | 7) == 0x17)
    {
      v76 = 25;
    }

    else
    {
      v76 = (v75 | 7) + 1;
    }

    if (v75 >= 0x17)
    {
      v69 = v76;
    }

    else
    {
      v69 = 23;
    }

    v72 = v73 == 22;
    goto LABEL_125;
  }

  v31 = operator new(0x48uLL);
  v31[32] = 47;
  *v31 = v90[3];
  *(v31 + 1) = v90[2];
  *(v31 + 2) = v90[1];
  *(v31 + 3) = v90[0];
  v32 = operator new(0x90uLL);
  strcpy(v32 + 64, "/cpms.budgets");
  *v32 = v90[3];
  *(v32 + 1) = v90[2];
  *(v32 + 2) = v90[1];
  *(v32 + 3) = v90[0];
  operator delete(v31);
  v92.__r_.__value_.__r.__words[0] = v32;
  *&v92.__r_.__value_.__r.__words[1] = xmmword_297224CB0;
  v35 = v92.__r_.__value_.__l.__size_;
  v36 = (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v36 - v92.__r_.__value_.__l.__size_ >= 6)
  {
    v59 = v92.__r_.__value_.__r.__words[0];
    v60 = v92.__r_.__value_.__r.__words[0] + v92.__r_.__value_.__l.__size_;
    *v60 = 1952544558;
    *(v60 + 4) = 26723;
    v61 = v35 + 6;
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      v92.__r_.__value_.__l.__size_ = v35 + 6;
    }

    else
    {
      *(&v92.__r_.__value_.__s + 23) = v61 & 0x7F;
    }

    v46 = (v59 + v61);
  }

  else
  {
    v37 = 0x7FFFFFFFFFFFFFF7;
    v38 = v92.__r_.__value_.__l.__size_ + 6;
    if (0x7FFFFFFFFFFFFFF7 - (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v92.__r_.__value_.__l.__size_ + 6 - v36)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v39 = v92.__r_.__value_.__r.__words[0];
    if (v36 >= 0x3FFFFFFFFFFFFFF3)
    {
      v42 = 0;
    }

    else
    {
      v40 = 2 * v36;
      if (v38 > 2 * v36)
      {
        v40 = v92.__r_.__value_.__l.__size_ + 6;
      }

      if ((v40 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v40 | 7) + 1;
      }

      if (v40 >= 0x17)
      {
        v37 = v41;
      }

      else
      {
        v37 = 23;
      }

      v42 = v36 == 22;
    }

    v43 = operator new(v37);
    v44 = v43;
    if (v35)
    {
      memmove(v43, v39, v35);
    }

    v45 = v44 + v35;
    *v45 = 1952544558;
    *(v45 + 4) = 26723;
    if (!v42)
    {
      operator delete(v39);
    }

    v92.__r_.__value_.__l.__size_ = v38;
    v92.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
    v92.__r_.__value_.__r.__words[0] = v44;
    v46 = (v44 + v38);
  }

  *v46 = 0;
  buf = v92;
  memset(&v92, 0, sizeof(v92));
  v65 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 17) < 6)
    {
      v66 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 6;
      v67 = &buf;
      v68 = 22;
LABEL_98:
      v70 = 2 * v68;
      if (v66 > 2 * v68)
      {
        v70 = v66;
      }

      if ((v70 | 7) == 0x17)
      {
        v71 = 25;
      }

      else
      {
        v71 = (v70 | 7) + 1;
      }

      if (v70 >= 0x17)
      {
        v69 = v71;
      }

      else
      {
        v69 = 23;
      }

      v72 = v68 == 22;
      goto LABEL_125;
    }

    goto LABEL_112;
  }

  v65 = buf.__r_.__value_.__l.__size_;
  v68 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v68 - buf.__r_.__value_.__l.__size_ >= 6)
  {
LABEL_130:
    v74 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_131;
  }

  v69 = 0x7FFFFFFFFFFFFFF7;
  v66 = buf.__r_.__value_.__l.__size_ + 6;
  if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 6 - v68)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v67 = buf.__r_.__value_.__r.__words[0];
  if (v68 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_98;
  }

  v72 = 0;
LABEL_125:
  v77 = operator new(v69);
  v78 = v77;
  if (v65)
  {
    memmove(v77, v67, v65);
  }

  v79 = v78 + v65;
  *v79 = 1768714286;
  *(v79 + 4) = 29811;
  if (!v72)
  {
    operator delete(v67);
  }

  buf.__r_.__value_.__l.__size_ = v66;
  buf.__r_.__value_.__r.__words[2] = v69 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v78;
  v80 = (v78 + v66);
LABEL_135:
  *v80 = 0;
  __p.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
  v83 = buf.__r_.__value_.__r.__words[0];
  *(__p.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
  v84 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  memset(&buf, 0, sizeof(buf));
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = v83;
    *v3 = __p.__r_.__value_.__r.__words[0];
    *(a2 + 15) = *(__p.__r_.__value_.__r.__words + 7);
    *(a2 + 23) = v84;
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_137;
    }

LABEL_141:
    v85 = *(this + 13);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_146;
    }

    goto LABEL_142;
  }

  operator delete(*a2);
  v86 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  *a2 = v83;
  *v3 = __p.__r_.__value_.__r.__words[0];
  *(a2 + 15) = *(__p.__r_.__value_.__r.__words + 7);
  *(a2 + 23) = v84;
  if (v86 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }
  }

  else if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_141;
  }

LABEL_137:
  operator delete(v92.__r_.__value_.__l.__data_);
  v85 = *(this + 13);
  if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_146;
  }

LABEL_142:
  if (*(a2 + 23) >= 0)
  {
    v87 = a2;
  }

  else
  {
    v87 = *a2;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
  *(buf.__r_.__value_.__r.__words + 4) = v87;
  _os_log_impl(&dword_296FF7000, v85, OS_LOG_TYPE_DEFAULT, "#I CPMS Power Budget List: %s", &buf, 0xCu);
LABEL_146:
  v88 = *MEMORY[0x29EDCA608];
}

void sub_2970660F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (v39 < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 + 23) < 0)
  {
    operator delete(*v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CPMSModule::initPowerConfig_sync(void)::$_1::operator()(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x29EDC0AA8];
  if ([a2 isEqualToString:*MEMORY[0x29EDC0AA8]])
  {
    v9 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [v9 addObject:{objc_msgSend(a3, "valueForKey:", @"Min"}];
    [v9 addObject:{objc_msgSend(a3, "valueForKey:", @"Max"}];
    [a4 setObject:v9 forKey:v8];
    v10 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v12 = a1 + 28;
    v11 = a1[28];
    if (v11)
    {
      while (1)
      {
        v12 = v11;
        if (!v11[28])
        {
          break;
        }

        v11 = *v11;
        if (!*v12)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      v13 = v12;
      v12 = operator new(0x28uLL);
      *(v12 + 28) = 0;
      *(v12 + 32) = 0;
      *(v12 + 36) = 0;
      *v12 = 0;
      v12[1] = 0;
      v12[2] = v13;
      *v13 = v12;
      v14 = *a1[27];
      if (v14)
      {
        a1[27] = v14;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v12);
      ++a1[29];
    }

    *(v12 + 8) = v10;
    *(v12 + 36) = 1;
    v15 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v16 = a1[32];
    if (v16)
    {
      while (1)
      {
        v17 = v16;
        if (!v16[28])
        {
          break;
        }

        v16 = *v16;
        if (!*v17)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v17 = a1 + 32;
LABEL_93:
      v75 = v17;
      v17 = operator new(0x28uLL);
      *(v17 + 28) = 0;
      *(v17 + 32) = 0;
      *(v17 + 36) = 0;
      *v17 = 0;
      v17[1] = 0;
      v17[2] = v75;
      *v75 = v17;
      v76 = *a1[31];
      if (v76)
      {
        a1[31] = v76;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v17);
      ++a1[33];
    }

    *(v17 + 8) = v15;
    *(v17 + 36) = 1;
    result = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v77 = result;
    v78 = a1[36];
    if (v78)
    {
      while (1)
      {
        v79 = v78;
        if (!v78[28])
        {
          break;
        }

        v78 = *v78;
        if (!*v79)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v79 = a1 + 36;
LABEL_101:
      v80 = v79;
      v79 = operator new(0x28uLL);
      *(v79 + 28) = 0;
      *(v79 + 32) = 0;
      *(v79 + 36) = 0;
      *v79 = 0;
      v79[1] = 0;
      v79[2] = v80;
      *v80 = v79;
      v81 = *a1[35];
      if (v81)
      {
        a1[35] = v81;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v79);
      ++a1[37];
    }

    *(v79 + 8) = v77;
    *(v79 + 36) = 1;
    v82 = a1[40];
    if (v82)
    {
      while (1)
      {
        v44 = v82;
        if (!v82[28])
        {
          goto LABEL_112;
        }

        v82 = *v82;
        if (!*v44)
        {
          goto LABEL_109;
        }
      }
    }

    v44 = a1 + 40;
LABEL_109:
    v83 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 0;
    *(v44 + 32) = 0;
    *(v44 + 36) = 0;
    *v44 = 0;
    v44[1] = 0;
    v44[2] = v83;
    *v83 = v44;
    v47 = *a1[39];
    if (!v47)
    {
LABEL_111:
      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[40], v44);
      ++a1[41];
LABEL_112:
      *(v44 + 8) = 1;
      *(v44 + 36) = 1;
      return result;
    }

LABEL_110:
    a1[39] = v47;
    goto LABEL_111;
  }

  v18 = *MEMORY[0x29EDC0AA0];
  if ([a2 isEqualToString:*MEMORY[0x29EDC0AA0]])
  {
    v19 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [v19 addObject:{objc_msgSend(a3, "valueForKey:", @"Min"}];
    [v19 addObject:{objc_msgSend(a3, "valueForKey:", @"Max"}];
    [a4 setObject:v19 forKey:v18];
    v20 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v22 = a1 + 28;
    v21 = a1[28];
    if (v21)
    {
      while (1)
      {
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 28);
          if (v24 < 2)
          {
            break;
          }

          v21 = *v23;
          v22 = v23;
          if (!*v23)
          {
            goto LABEL_20;
          }
        }

        if (v24)
        {
          break;
        }

        v21 = v23[1];
        if (!v21)
        {
          v22 = v23 + 1;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v23 = a1 + 28;
LABEL_20:
      v25 = v23;
      v23 = operator new(0x28uLL);
      *(v23 + 28) = 1;
      *(v23 + 32) = 0;
      *(v23 + 36) = 0;
      *v23 = 0;
      v23[1] = 0;
      v23[2] = v25;
      *v22 = v23;
      v26 = *a1[27];
      if (v26)
      {
        a1[27] = v26;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v23);
      ++a1[29];
    }

    *(v23 + 8) = v20;
    *(v23 + 36) = 1;
    v27 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v28 = a1[32];
    if (v28)
    {
      while (1)
      {
        while (1)
        {
          v30 = v28;
          v31 = *(v28 + 28);
          if (v31 < 2)
          {
            break;
          }

          v28 = *v30;
          v29 = v30;
          if (!*v30)
          {
            goto LABEL_30;
          }
        }

        if (v31)
        {
          break;
        }

        v28 = v30[1];
        if (!v28)
        {
          v29 = v30 + 1;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v29 = a1 + 32;
      v30 = a1 + 32;
LABEL_30:
      v32 = v30;
      v30 = operator new(0x28uLL);
      *(v30 + 28) = 1;
      *(v30 + 32) = 0;
      *(v30 + 36) = 0;
      *v30 = 0;
      v30[1] = 0;
      v30[2] = v32;
      *v29 = v30;
      v33 = *a1[31];
      if (v33)
      {
        a1[31] = v33;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v30);
      ++a1[33];
    }

    *(v30 + 8) = v27;
    *(v30 + 36) = 1;
    result = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v35 = result;
    v36 = a1[36];
    if (v36)
    {
      while (1)
      {
        while (1)
        {
          v38 = v36;
          v39 = *(v36 + 28);
          if (v39 < 2)
          {
            break;
          }

          v36 = *v38;
          v37 = v38;
          if (!*v38)
          {
            goto LABEL_40;
          }
        }

        if (v39)
        {
          break;
        }

        v36 = v38[1];
        if (!v36)
        {
          v37 = v38 + 1;
          goto LABEL_40;
        }
      }
    }

    else
    {
      v37 = a1 + 36;
      v38 = a1 + 36;
LABEL_40:
      v40 = v38;
      v38 = operator new(0x28uLL);
      *(v38 + 28) = 1;
      *(v38 + 32) = 0;
      *(v38 + 36) = 0;
      *v38 = 0;
      v38[1] = 0;
      v38[2] = v40;
      *v37 = v38;
      v41 = *a1[35];
      if (v41)
      {
        a1[35] = v41;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v38);
      ++a1[37];
    }

    *(v38 + 8) = v35;
    *(v38 + 36) = 1;
    v42 = a1[40];
    if (v42)
    {
      while (1)
      {
        while (1)
        {
          v44 = v42;
          v45 = *(v42 + 28);
          if (v45 < 2)
          {
            break;
          }

          v42 = *v44;
          v43 = v44;
          if (!*v44)
          {
            goto LABEL_50;
          }
        }

        if (v45)
        {
          goto LABEL_112;
        }

        v42 = v44[1];
        if (!v42)
        {
          v43 = v44 + 1;
          goto LABEL_50;
        }
      }
    }

    v43 = a1 + 40;
    v44 = a1 + 40;
LABEL_50:
    v46 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 1;
    *(v44 + 32) = 0;
    *(v44 + 36) = 0;
    *v44 = 0;
    v44[1] = 0;
    v44[2] = v46;
    *v43 = v44;
    v47 = *a1[39];
    if (!v47)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v48 = *MEMORY[0x29EDC0AB0];
  if ([a2 isEqualToString:*MEMORY[0x29EDC0AB0]])
  {
    v49 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [v49 addObject:{objc_msgSend(a3, "valueForKey:", @"Min"}];
    [v49 addObject:{objc_msgSend(a3, "valueForKey:", @"Max"}];
    [a4 setObject:v49 forKey:v48];
    v50 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v52 = a1 + 28;
    v51 = a1[28];
    if (v51)
    {
      while (1)
      {
        while (1)
        {
          v53 = v51;
          v54 = *(v51 + 28);
          if (v54 < 3)
          {
            break;
          }

          v51 = *v53;
          v52 = v53;
          if (!*v53)
          {
            goto LABEL_60;
          }
        }

        if (v54 == 2)
        {
          break;
        }

        v51 = v53[1];
        if (!v51)
        {
          v52 = v53 + 1;
          goto LABEL_60;
        }
      }
    }

    else
    {
      v53 = a1 + 28;
LABEL_60:
      v55 = v53;
      v53 = operator new(0x28uLL);
      *(v53 + 28) = 2;
      *(v53 + 32) = 0;
      *(v53 + 36) = 0;
      *v53 = 0;
      v53[1] = 0;
      v53[2] = v55;
      *v52 = v53;
      v56 = *a1[27];
      if (v56)
      {
        a1[27] = v56;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v53);
      ++a1[29];
    }

    *(v53 + 8) = v50;
    *(v53 + 36) = 1;
    v57 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v58 = a1[32];
    if (v58)
    {
      while (1)
      {
        while (1)
        {
          v60 = v58;
          v61 = *(v58 + 28);
          if (v61 < 3)
          {
            break;
          }

          v58 = *v60;
          v59 = v60;
          if (!*v60)
          {
            goto LABEL_70;
          }
        }

        if (v61 == 2)
        {
          break;
        }

        v58 = v60[1];
        if (!v58)
        {
          v59 = v60 + 1;
          goto LABEL_70;
        }
      }
    }

    else
    {
      v59 = a1 + 32;
      v60 = a1 + 32;
LABEL_70:
      v62 = v60;
      v60 = operator new(0x28uLL);
      *(v60 + 28) = 2;
      *(v60 + 32) = 0;
      *(v60 + 36) = 0;
      *v60 = 0;
      v60[1] = 0;
      v60[2] = v62;
      *v59 = v60;
      v63 = *a1[31];
      if (v63)
      {
        a1[31] = v63;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v60);
      ++a1[33];
    }

    *(v60 + 8) = v57;
    *(v60 + 36) = 1;
    result = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v64 = result;
    v65 = a1[36];
    if (v65)
    {
      while (1)
      {
        while (1)
        {
          v67 = v65;
          v68 = *(v65 + 28);
          if (v68 < 3)
          {
            break;
          }

          v65 = *v67;
          v66 = v67;
          if (!*v67)
          {
            goto LABEL_80;
          }
        }

        if (v68 == 2)
        {
          break;
        }

        v65 = v67[1];
        if (!v65)
        {
          v66 = v67 + 1;
          goto LABEL_80;
        }
      }
    }

    else
    {
      v66 = a1 + 36;
      v67 = a1 + 36;
LABEL_80:
      v69 = v67;
      v67 = operator new(0x28uLL);
      *(v67 + 28) = 2;
      *(v67 + 32) = 0;
      *(v67 + 36) = 0;
      *v67 = 0;
      v67[1] = 0;
      v67[2] = v69;
      *v66 = v67;
      v70 = *a1[35];
      if (v70)
      {
        a1[35] = v70;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v67);
      ++a1[37];
    }

    *(v67 + 8) = v64;
    *(v67 + 36) = 1;
    v71 = a1[40];
    if (v71)
    {
      while (1)
      {
        while (1)
        {
          v44 = v71;
          v73 = *(v71 + 28);
          if (v73 < 3)
          {
            break;
          }

          v71 = *v44;
          v72 = v44;
          if (!*v44)
          {
            goto LABEL_90;
          }
        }

        if (v73 == 2)
        {
          goto LABEL_112;
        }

        v71 = v44[1];
        if (!v71)
        {
          v72 = v44 + 1;
          goto LABEL_90;
        }
      }
    }

    v72 = a1 + 40;
    v44 = a1 + 40;
LABEL_90:
    v74 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 2;
    *(v44 + 32) = 0;
    *(v44 + 36) = 0;
    *v44 = 0;
    v44[1] = 0;
    v44[2] = v74;
    *v72 = v44;
    v47 = *a1[39];
    if (!v47)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  result = [a2 isEqualToString:*MEMORY[0x29EDC0AB8]];
  if (result)
  {
    v84 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v86 = a1 + 28;
    v85 = a1[28];
    v87 = a1 + 28;
    v88 = a1 + 28;
    if (v85)
    {
      while (1)
      {
        while (1)
        {
          v88 = v85;
          v89 = *(v85 + 28);
          if (v89 < 0xB)
          {
            break;
          }

          v85 = *v88;
          v87 = v88;
          if (!*v88)
          {
            goto LABEL_122;
          }
        }

        if (v89 == 10)
        {
          break;
        }

        v85 = v88[1];
        if (!v85)
        {
          v87 = v88 + 1;
          goto LABEL_122;
        }
      }
    }

    else
    {
LABEL_122:
      v90 = v88;
      v88 = operator new(0x28uLL);
      *(v88 + 28) = 10;
      *(v88 + 32) = 0;
      *(v88 + 36) = 0;
      *v88 = 0;
      v88[1] = 0;
      v88[2] = v90;
      *v87 = v88;
      v91 = *a1[27];
      if (v91)
      {
        a1[27] = v91;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v88);
      ++a1[29];
    }

    *(v88 + 8) = v84;
    *(v88 + 36) = 1;
    v92 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v93 = a1 + 32;
    v94 = a1[32];
    v95 = a1 + 32;
    v96 = a1 + 32;
    if (v94)
    {
      while (1)
      {
        while (1)
        {
          v96 = v94;
          v97 = *(v94 + 28);
          if (v97 < 0xB)
          {
            break;
          }

          v94 = *v96;
          v95 = v96;
          if (!*v96)
          {
            goto LABEL_132;
          }
        }

        if (v97 == 10)
        {
          break;
        }

        v94 = v96[1];
        if (!v94)
        {
          v95 = v96 + 1;
          goto LABEL_132;
        }
      }
    }

    else
    {
LABEL_132:
      v98 = v96;
      v96 = operator new(0x28uLL);
      *(v96 + 28) = 10;
      *(v96 + 32) = 0;
      *(v96 + 36) = 0;
      *v96 = 0;
      v96[1] = 0;
      v96[2] = v98;
      *v95 = v96;
      v99 = *a1[31];
      if (v99)
      {
        a1[31] = v99;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v96);
      ++a1[33];
    }

    *(v96 + 8) = v92;
    *(v96 + 36) = 1;
    v100 = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v101 = a1 + 36;
    v102 = a1[36];
    v103 = a1 + 36;
    v104 = a1 + 36;
    if (v102)
    {
      while (1)
      {
        while (1)
        {
          v104 = v102;
          v105 = *(v102 + 28);
          if (v105 < 0xB)
          {
            break;
          }

          v102 = *v104;
          v103 = v104;
          if (!*v104)
          {
            goto LABEL_142;
          }
        }

        if (v105 == 10)
        {
          break;
        }

        v102 = v104[1];
        if (!v102)
        {
          v103 = v104 + 1;
          goto LABEL_142;
        }
      }
    }

    else
    {
LABEL_142:
      v106 = v104;
      v104 = operator new(0x28uLL);
      *(v104 + 28) = 10;
      *(v104 + 32) = 0;
      *(v104 + 36) = 0;
      *v104 = 0;
      v104[1] = 0;
      v104[2] = v106;
      *v103 = v104;
      v107 = *a1[35];
      if (v107)
      {
        a1[35] = v107;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v104);
      ++a1[37];
    }

    *(v104 + 8) = v100;
    *(v104 + 36) = 1;
    v108 = a1 + 40;
    v109 = a1[40];
    v110 = a1 + 40;
    v111 = a1 + 40;
    if (v109)
    {
      while (1)
      {
        while (1)
        {
          v111 = v109;
          v112 = *(v109 + 28);
          if (v112 < 0xB)
          {
            break;
          }

          v109 = *v111;
          v110 = v111;
          if (!*v111)
          {
            goto LABEL_152;
          }
        }

        if (v112 == 10)
        {
          break;
        }

        v109 = v111[1];
        if (!v109)
        {
          v110 = v111 + 1;
          goto LABEL_152;
        }
      }
    }

    else
    {
LABEL_152:
      v113 = v111;
      v111 = operator new(0x28uLL);
      *(v111 + 28) = 10;
      *(v111 + 32) = 0;
      *(v111 + 36) = 0;
      *v111 = 0;
      v111[1] = 0;
      v111[2] = v113;
      *v110 = v111;
      v114 = *a1[39];
      if (v114)
      {
        a1[39] = v114;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[40], v111);
      ++a1[41];
    }

    *(v111 + 8) = 1;
    *(v111 + 36) = 1;
    v115 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v116 = *v86;
    v117 = a1 + 28;
    v118 = a1 + 28;
    if (*v86)
    {
      while (1)
      {
        while (1)
        {
          v118 = v116;
          v119 = *(v116 + 28);
          if (v119 < 0xC)
          {
            break;
          }

          v116 = *v118;
          v117 = v118;
          if (!*v118)
          {
            goto LABEL_162;
          }
        }

        if (v119 == 11)
        {
          break;
        }

        v116 = v118[1];
        if (!v116)
        {
          v117 = v118 + 1;
          goto LABEL_162;
        }
      }
    }

    else
    {
LABEL_162:
      v120 = v118;
      v118 = operator new(0x28uLL);
      *(v118 + 28) = 11;
      *(v118 + 32) = 0;
      *(v118 + 36) = 0;
      *v118 = 0;
      v118[1] = 0;
      v118[2] = v120;
      *v117 = v118;
      v121 = *a1[27];
      if (v121)
      {
        a1[27] = v121;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v118);
      ++a1[29];
    }

    *(v118 + 8) = v115;
    *(v118 + 36) = 1;
    v122 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v123 = *v93;
    v124 = a1 + 32;
    v125 = a1 + 32;
    if (*v93)
    {
      while (1)
      {
        while (1)
        {
          v125 = v123;
          v126 = *(v123 + 28);
          if (v126 < 0xC)
          {
            break;
          }

          v123 = *v125;
          v124 = v125;
          if (!*v125)
          {
            goto LABEL_172;
          }
        }

        if (v126 == 11)
        {
          break;
        }

        v123 = v125[1];
        if (!v123)
        {
          v124 = v125 + 1;
          goto LABEL_172;
        }
      }
    }

    else
    {
LABEL_172:
      v127 = v125;
      v125 = operator new(0x28uLL);
      *(v125 + 28) = 11;
      *(v125 + 32) = 0;
      *(v125 + 36) = 0;
      *v125 = 0;
      v125[1] = 0;
      v125[2] = v127;
      *v124 = v125;
      v128 = *a1[31];
      if (v128)
      {
        a1[31] = v128;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v125);
      ++a1[33];
    }

    *(v125 + 8) = v122;
    *(v125 + 36) = 1;
    v129 = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v130 = *v101;
    v131 = a1 + 36;
    v132 = a1 + 36;
    if (*v101)
    {
      while (1)
      {
        while (1)
        {
          v132 = v130;
          v133 = *(v130 + 28);
          if (v133 < 0xC)
          {
            break;
          }

          v130 = *v132;
          v131 = v132;
          if (!*v132)
          {
            goto LABEL_182;
          }
        }

        if (v133 == 11)
        {
          break;
        }

        v130 = v132[1];
        if (!v130)
        {
          v131 = v132 + 1;
          goto LABEL_182;
        }
      }
    }

    else
    {
LABEL_182:
      v134 = v132;
      v132 = operator new(0x28uLL);
      *(v132 + 28) = 11;
      *(v132 + 32) = 0;
      *(v132 + 36) = 0;
      *v132 = 0;
      v132[1] = 0;
      v132[2] = v134;
      *v131 = v132;
      v135 = *a1[35];
      if (v135)
      {
        a1[35] = v135;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v132);
      ++a1[37];
    }

    *(v132 + 8) = v129;
    *(v132 + 36) = 1;
    v136 = *v108;
    v137 = a1 + 40;
    v138 = a1 + 40;
    if (*v108)
    {
      while (1)
      {
        while (1)
        {
          v138 = v136;
          v139 = *(v136 + 28);
          if (v139 < 0xC)
          {
            break;
          }

          v136 = *v138;
          v137 = v138;
          if (!*v138)
          {
            goto LABEL_192;
          }
        }

        if (v139 == 11)
        {
          break;
        }

        v136 = v138[1];
        if (!v136)
        {
          v137 = v138 + 1;
          goto LABEL_192;
        }
      }
    }

    else
    {
LABEL_192:
      v140 = v138;
      v138 = operator new(0x28uLL);
      *(v138 + 28) = 11;
      *(v138 + 32) = 0;
      *(v138 + 36) = 0;
      *v138 = 0;
      v138[1] = 0;
      v138[2] = v140;
      *v137 = v138;
      v141 = *a1[39];
      if (v141)
      {
        a1[39] = v141;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[40], v138);
      ++a1[41];
    }

    *(v138 + 8) = 1;
    *(v138 + 36) = 1;
    v142 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v143 = *v86;
    v144 = a1 + 28;
    v145 = a1 + 28;
    if (*v86)
    {
      while (1)
      {
        while (1)
        {
          v145 = v143;
          v146 = *(v143 + 28);
          if (v146 < 0xD)
          {
            break;
          }

          v143 = *v145;
          v144 = v145;
          if (!*v145)
          {
            goto LABEL_202;
          }
        }

        if (v146 == 12)
        {
          break;
        }

        v143 = v145[1];
        if (!v143)
        {
          v144 = v145 + 1;
          goto LABEL_202;
        }
      }
    }

    else
    {
LABEL_202:
      v147 = v145;
      v145 = operator new(0x28uLL);
      *(v145 + 28) = 12;
      *(v145 + 32) = 0;
      *(v145 + 36) = 0;
      *v145 = 0;
      v145[1] = 0;
      v145[2] = v147;
      *v144 = v145;
      v148 = *a1[27];
      if (v148)
      {
        a1[27] = v148;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v145);
      ++a1[29];
    }

    *(v145 + 8) = v142;
    *(v145 + 36) = 1;
    v149 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v150 = *v93;
    v151 = a1 + 32;
    v152 = a1 + 32;
    if (*v93)
    {
      while (1)
      {
        while (1)
        {
          v152 = v150;
          v153 = *(v150 + 28);
          if (v153 < 0xD)
          {
            break;
          }

          v150 = *v152;
          v151 = v152;
          if (!*v152)
          {
            goto LABEL_212;
          }
        }

        if (v153 == 12)
        {
          break;
        }

        v150 = v152[1];
        if (!v150)
        {
          v151 = v152 + 1;
          goto LABEL_212;
        }
      }
    }

    else
    {
LABEL_212:
      v154 = v152;
      v152 = operator new(0x28uLL);
      *(v152 + 28) = 12;
      *(v152 + 32) = 0;
      *(v152 + 36) = 0;
      *v152 = 0;
      v152[1] = 0;
      v152[2] = v154;
      *v151 = v152;
      v155 = *a1[31];
      if (v155)
      {
        a1[31] = v155;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v152);
      ++a1[33];
    }

    *(v152 + 8) = v149;
    *(v152 + 36) = 1;
    v156 = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v157 = *v101;
    v158 = a1 + 36;
    v159 = a1 + 36;
    if (*v101)
    {
      while (1)
      {
        while (1)
        {
          v159 = v157;
          v160 = *(v157 + 28);
          if (v160 < 0xD)
          {
            break;
          }

          v157 = *v159;
          v158 = v159;
          if (!*v159)
          {
            goto LABEL_222;
          }
        }

        if (v160 == 12)
        {
          break;
        }

        v157 = v159[1];
        if (!v157)
        {
          v158 = v159 + 1;
          goto LABEL_222;
        }
      }
    }

    else
    {
LABEL_222:
      v161 = v159;
      v159 = operator new(0x28uLL);
      *(v159 + 28) = 12;
      *(v159 + 32) = 0;
      *(v159 + 36) = 0;
      *v159 = 0;
      v159[1] = 0;
      v159[2] = v161;
      *v158 = v159;
      v162 = *a1[35];
      if (v162)
      {
        a1[35] = v162;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v159);
      ++a1[37];
    }

    *(v159 + 8) = v156;
    *(v159 + 36) = 1;
    v163 = *v108;
    v164 = a1 + 40;
    v165 = a1 + 40;
    if (*v108)
    {
      while (1)
      {
        while (1)
        {
          v165 = v163;
          v166 = *(v163 + 28);
          if (v166 < 0xD)
          {
            break;
          }

          v163 = *v165;
          v164 = v165;
          if (!*v165)
          {
            goto LABEL_232;
          }
        }

        if (v166 == 12)
        {
          break;
        }

        v163 = v165[1];
        if (!v163)
        {
          v164 = v165 + 1;
          goto LABEL_232;
        }
      }
    }

    else
    {
LABEL_232:
      v167 = v165;
      v165 = operator new(0x28uLL);
      *(v165 + 28) = 12;
      *(v165 + 32) = 0;
      *(v165 + 36) = 0;
      *v165 = 0;
      v165[1] = 0;
      v165[2] = v167;
      *v164 = v165;
      v168 = *a1[39];
      if (v168)
      {
        a1[39] = v168;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[40], v165);
      ++a1[41];
    }

    *(v165 + 8) = 1;
    *(v165 + 36) = 1;
    v169 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v170 = *v86;
    v171 = a1 + 28;
    if (*v86)
    {
      while (1)
      {
        while (1)
        {
          v171 = v170;
          v172 = *(v170 + 28);
          if (v172 < 0xE)
          {
            break;
          }

          v170 = *v171;
          v86 = v171;
          if (!*v171)
          {
            goto LABEL_242;
          }
        }

        if (v172 == 13)
        {
          break;
        }

        v170 = v171[1];
        if (!v170)
        {
          v86 = v171 + 1;
          goto LABEL_242;
        }
      }
    }

    else
    {
LABEL_242:
      v173 = v171;
      v171 = operator new(0x28uLL);
      *(v171 + 28) = 13;
      *(v171 + 32) = 0;
      *(v171 + 36) = 0;
      *v171 = 0;
      v171[1] = 0;
      v171[2] = v173;
      *v86 = v171;
      v174 = *a1[27];
      if (v174)
      {
        a1[27] = v174;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v171);
      ++a1[29];
    }

    *(v171 + 8) = v169;
    *(v171 + 36) = 1;
    v175 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v176 = *v93;
    v177 = a1 + 32;
    if (*v93)
    {
      while (1)
      {
        while (1)
        {
          v177 = v176;
          v178 = *(v176 + 28);
          if (v178 < 0xE)
          {
            break;
          }

          v176 = *v177;
          v93 = v177;
          if (!*v177)
          {
            goto LABEL_252;
          }
        }

        if (v178 == 13)
        {
          break;
        }

        v176 = v177[1];
        if (!v176)
        {
          v93 = v177 + 1;
          goto LABEL_252;
        }
      }
    }

    else
    {
LABEL_252:
      v179 = v177;
      v177 = operator new(0x28uLL);
      *(v177 + 28) = 13;
      *(v177 + 32) = 0;
      *(v177 + 36) = 0;
      *v177 = 0;
      v177[1] = 0;
      v177[2] = v179;
      *v93 = v177;
      v180 = *a1[31];
      if (v180)
      {
        a1[31] = v180;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v177);
      ++a1[33];
    }

    *(v177 + 8) = v175;
    *(v177 + 36) = 1;
    result = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v181 = result;
    v182 = *v101;
    v183 = a1 + 36;
    if (*v101)
    {
      while (1)
      {
        while (1)
        {
          v183 = v182;
          v184 = *(v182 + 28);
          if (v184 < 0xE)
          {
            break;
          }

          v182 = *v183;
          v101 = v183;
          if (!*v183)
          {
            goto LABEL_262;
          }
        }

        if (v184 == 13)
        {
          break;
        }

        v182 = v183[1];
        if (!v182)
        {
          v101 = v183 + 1;
          goto LABEL_262;
        }
      }
    }

    else
    {
LABEL_262:
      v185 = v183;
      v183 = operator new(0x28uLL);
      *(v183 + 28) = 13;
      *(v183 + 32) = 0;
      *(v183 + 36) = 0;
      *v183 = 0;
      v183[1] = 0;
      v183[2] = v185;
      *v101 = v183;
      v186 = *a1[35];
      if (v186)
      {
        a1[35] = v186;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v183);
      ++a1[37];
    }

    *(v183 + 8) = v181;
    *(v183 + 36) = 1;
    v187 = *v108;
    v44 = a1 + 40;
    if (*v108)
    {
      while (1)
      {
        while (1)
        {
          v44 = v187;
          v188 = *(v187 + 28);
          if (v188 < 0xE)
          {
            break;
          }

          v187 = *v44;
          v108 = v44;
          if (!*v44)
          {
            goto LABEL_272;
          }
        }

        if (v188 == 13)
        {
          goto LABEL_112;
        }

        v187 = v44[1];
        if (!v187)
        {
          v108 = v44 + 1;
          break;
        }
      }
    }

LABEL_272:
    v189 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 13;
    *(v44 + 32) = 0;
    *(v44 + 36) = 0;
    *v44 = 0;
    v44[1] = 0;
    v44[2] = v189;
    *v108 = v44;
    v47 = *a1[39];
    if (!v47)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  return result;
}