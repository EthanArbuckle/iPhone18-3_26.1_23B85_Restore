void sub_296DD6534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  v13 = va_arg(va3, void);
  va_copy(va4, va3);
  v14 = va_arg(va4, const void *);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va3);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va4);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v5 - 96));
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFDictionary const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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

void sub_296DD67C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296DD67E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void coex::fetch_basic_cell_config_list(CFMutableArrayRef *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v9 = Mutable;
  if (Mutable)
  {
    *a1 = Mutable;
  }

  if (a2)
  {
    if (a3)
    {
      do
      {
        value = 0xAAAAAAAAAAAAAAAALL;
        coex::fetch_cell_config(&value, a2, 1u);
        v10 = value;
        if (value)
        {
          CFArrayAppendValue(v9, value);
          CFRelease(v10);
        }

        value = 0xAAAAAAAAAAAAAAAALL;
        coex::fetch_cell_config(&value, a3, 2u);
        v11 = value;
        if (value)
        {
          CFArrayAppendValue(v9, value);
          CFRelease(v11);
        }

        a3 += 8;
        a2 += 8;
        --a4;
      }

      while (a4);
    }

    else
    {
      do
      {
        value = 0xAAAAAAAAAAAAAAAALL;
        coex::fetch_cell_config(&value, a2, 1u);
        v13 = value;
        if (value)
        {
          CFArrayAppendValue(v9, value);
          CFRelease(v13);
        }

        a2 += 8;
        --a4;
      }

      while (a4);
    }
  }

  else if (a3)
  {
    do
    {
      value = 0xAAAAAAAAAAAAAAAALL;
      coex::fetch_cell_config(&value, a3, 2u);
      v12 = value;
      if (value)
      {
        CFArrayAppendValue(v9, value);
        CFRelease(v12);
      }

      a3 += 8;
      --a4;
    }

    while (a4);
  }
}

void sub_296DD69A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(v2);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void coex::fetch_freq_and_bandwidth(coex *this)
{
  v9 = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  LODWORD(v8[0]) = 0;
  v3 = CFNumberCreate(v2, kCFNumberIntType, v8);
  v8[1] = v3;
  v9 = 0;
  valuePtr = 0;
  v4 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
  v8[0] = v4;
  v9 = 0;
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v9 = Mutable;
  }

  ctu::cf::insert<__CFString const*,__CFNumber const*>(Mutable, *MEMORY[0x29EDC8778], v3);
  ctu::cf::insert<__CFString const*,__CFNumber const*>(v6, *MEMORY[0x29EDC8658], v4);
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFDictionaryGetTypeID())
    {
      *this = v6;
      CFRetain(v6);
    }

    else
    {
      *this = 0;
    }

    CFRelease(v6);
  }

  else
  {
    *this = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_296DD6B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a11);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ctu::cf::insert<__CFString const*,__CFNumber const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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

void sub_296DD6CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296DD6CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
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

void sub_296DD6D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296DD6DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,unsigned int>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  CFRelease(v9);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void sub_296DD6E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296DD6E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void coex::fetch_cell_config(CFMutableDictionaryRef *a1, uint64_t a2, unsigned int a3)
{
  Mutable = 0;
  if (*a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 4) == 0;
  }

  if (!v5 && (v8 = *MEMORY[0x29EDB8ED8], Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8778], *a2, v8), ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8658], 1000 * *(a2 + 4), v8), ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8720], a3, v8), Mutable) && (v9 = CFGetTypeID(Mutable), v9 == CFDictionaryGetTypeID()))
  {
    *a1 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    *a1 = 0;
    if (!Mutable)
    {
      return;
    }
  }

  CFRelease(Mutable);
}

void sub_296DD6FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296DD6FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296DD6FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,int>(__CFDictionary *a1, CFTypeRef cf, int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
  v9 = v8;
  if (cf)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  CFRelease(v9);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void sub_296DD70B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296DD70DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFArray *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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

void sub_296DD7170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296DD7194(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFArray const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  CFRetain(a3);
  if (cf)
  {
    CFDictionaryAddValue(a1, cf, a3);
  }

  CFRelease(a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296DD7228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296DD7248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void coex::fetch_gsm_cell_config(coex *this, unsigned int a2, unsigned int a3)
{
  if (a2 && (v6 = *MEMORY[0x29EDB8ED8], Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8778], a2, v6), ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8658], 200000, v6), ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC8720], a3, v6), Mutable))
  {
    v8 = CFGetTypeID(Mutable);
    if (v8 == CFDictionaryGetTypeID())
    {
      *this = Mutable;
      CFRetain(Mutable);
    }

    else
    {
      *this = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    *this = 0;
  }
}

void sub_296DD738C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296DD73A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296DD73B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFError *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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

void sub_296DD7448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296DD746C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver18pollWWANState_syncENS2_5SubIdEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v2[2];
      v6 = std::__shared_weak_count::lock(v3);
      v26 = v6;
      if (v6)
      {
        v7 = v6;
        if (!*v2)
        {
LABEL_31:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          return;
        }

        v24 = 0xAAAAAAAAAAAAAAAALL;
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v22 = v8;
        v23 = v8;
        v21[2] = v8;
        v21[3] = v8;
        v21[0] = v8;
        v21[1] = v8;
        AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK::ARI_CsiIdcGetCellConfigRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p[23] = 14;
        strcpy(__p, "get WWAN state");
        coex::checkError(&cf, v21, 1224769536, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v18 = 0;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v10 = Mutable;
        if (Mutable)
        {
          v18 = Mutable;
        }

        v11 = cf;
        if (cf)
        {
          v12 = 0;
          goto LABEL_20;
        }

        if (AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK::unpack(v21))
        {
          *__p = operator new(0x28uLL);
          *&__p[8] = xmmword_296E22D40;
          strcpy(*__p, "Failed to get WWAN state (unpack error)");
          CreateError();
          v13 = cf;
          cf = v17;
          v17 = 0;
          if (v13)
          {
LABEL_13:
            CFRelease(v13);
          }
        }

        else
        {
          if (!**(&v22 + 1))
          {
            v12 = *v22;
            coex::fetch_cell_config_info(__p, v23, *(&v23 + 1));
            v16 = *__p;
            ctu::cf::insert<__CFString const*,__CFDictionary const*>(v10, *MEMORY[0x29EDC8728], *__p);
            if (v16)
            {
              CFRelease(v16);
            }

LABEL_19:
            v11 = cf;
            if (!cf)
            {
LABEL_21:
              if (v10)
              {
                v14 = CFGetTypeID(v10);
                if (v14 == CFDictionaryGetTypeID())
                {
                  v17 = v10;
                  CFRetain(v10);
                  v15 = v10;
                }

                else
                {
                  v15 = 0;
                  v17 = 0;
                }

                coex::ARICommandDriver::sendStateUpdate_sync(v4, &v17, v12);
                if (v15)
                {
                  CFRelease(v15);
                }

                CFRelease(v10);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              MEMORY[0x29C264F00](v21);
              goto LABEL_31;
            }

LABEL_20:
            ctu::cf::insert<__CFString const*,__CFError *>(v10, *MEMORY[0x29EDC8670], v11);
            goto LABEL_21;
          }

          *__p = operator new(0x28uLL);
          *&__p[8] = xmmword_296E22D40;
          strcpy(*__p, "Failed to get WWAN state (result error)");
          CreateError();
          v13 = cf;
          cf = v17;
          v17 = 0;
          if (v13)
          {
            goto LABEL_13;
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v12 = 0;
        goto LABEL_19;
      }
    }
  }
}

void sub_296DD77D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&__p);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264F00](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 64);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c88_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver18pollWWANState_syncENS1_5SubIdEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c88_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver18pollWWANState_syncENS1_5SubIdEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::pollWWANState_sync(coex::SubId)::$_0,std::allocator<coex::ARICommandDriver::pollWWANState_sync(coex::SubId)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D5D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::pollWWANState_sync(coex::SubId)::$_0,std::allocator<coex::ARICommandDriver::pollWWANState_sync(coex::SubId)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver20pollLinkQuality_syncENS2_5SubIdEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = v2[1];
  if (!v3)
  {
    return;
  }

  v4 = v2[2];
  v6 = std::__shared_weak_count::lock(v3);
  v24 = v6;
  if (!v6)
  {
    return;
  }

  if (!*v2)
  {
LABEL_28:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v6;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v15);
    }

    return;
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[3] = v7;
  v21 = v7;
  v20[1] = v7;
  v20[2] = v7;
  v20[0] = v7;
  AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK(v20, a2);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v18 = 16;
  strcpy(__p, "get link quality");
  coex::checkError(&cf, v20, 1224867840, __p);
  if (v18 < 0)
  {
    operator delete(*__p);
    *__p = 0;
    if (cf)
    {
LABEL_7:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = Mutable;
      if (Mutable)
      {
        *__p = Mutable;
      }

      ctu::cf::insert<__CFString const*,__CFError *>(Mutable, *MEMORY[0x29EDC8670], cf);
      if (v9)
      {
        v10 = CFGetTypeID(v9);
        if (v10 == CFDictionaryGetTypeID())
        {
          v16[0] = v9;
          CFRetain(v9);
          v11 = 0;
          v12 = v9;
          goto LABEL_21;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    *__p = 0;
    if (cf)
    {
      goto LABEL_7;
    }
  }

  if (!AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK::unpack(v20))
  {
    if (!**(&v21 + 1))
    {
      v9 = 0;
      v11 = *v21;
      goto LABEL_20;
    }

    v13 = *(v4 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LOWORD(v16[0]) = 0;
    v14 = "Failed to get link quality report (result error)";
    goto LABEL_33;
  }

  v13 = *(v4 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16[0]) = 0;
    v14 = "Failed to get link quality report (unpack error)";
LABEL_33:
    _os_log_error_impl(&dword_296D7D000, v13, OS_LOG_TYPE_ERROR, v14, v16, 2u);
  }

LABEL_18:
  v9 = 0;
LABEL_19:
  v11 = 0;
LABEL_20:
  v12 = 0;
  v16[0] = 0;
LABEL_21:
  coex::ARICommandDriver::sendStateUpdate_sync(v4, v16, v11);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  MEMORY[0x29C265670](v20);
  v6 = v24;
  if (v24)
  {
    goto LABEL_28;
  }
}

void sub_296DD7C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&__p);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C265670](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c90_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver20pollLinkQuality_syncENS1_5SubIdEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c90_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver20pollLinkQuality_syncENS1_5SubIdEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::pollLinkQuality_sync(coex::SubId)::$_0,std::allocator<coex::ARICommandDriver::pollLinkQuality_sync(coex::SubId)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D650;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::pollLinkQuality_sync(coex::SubId)::$_0,std::allocator<coex::ARICommandDriver::pollLinkQuality_sync(coex::SubId)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  v4 = *(v2 + 16);
  v6 = std::__shared_weak_count::lock(v3);
  v29 = v6;
  if (!v6)
  {
    return;
  }

  if (!*v2)
  {
LABEL_37:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v6;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v15);
    }

    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[3] = v7;
  v27 = v7;
  v26[1] = v7;
  v26[2] = v7;
  v26[0] = v7;
  AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK::ARI_CsiIdcSetRTConfigRspCb_SDK(v26, a2);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p[23] = 10;
  strcpy(__p, "set policy");
  coex::checkError(&cf, v26, 1224802304, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v23 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v23 = Mutable;
  }

  v9 = cf;
  if (cf)
  {
    goto LABEL_18;
  }

  if (AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK::unpack(v26))
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_296E22D50;
    strcpy(*__p, "Failed to set policy (unpack error)");
    CreateError();
    v10 = cf;
    cf = v22;
    v22 = 0;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (**(&v27 + 1))
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_296E22D50;
    strcpy(*__p, "Failed to set policy (result error)");
    CreateError();
    v10 = cf;
    cf = v22;
    v22 = 0;
    if (!v10)
    {
LABEL_15:
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      goto LABEL_17;
    }

LABEL_12:
    CFRelease(v10);
    goto LABEL_15;
  }

  v16 = (v2 + 40);
  v17 = (v4 + 21);
  if (v4 + 21 != (v2 + 40))
  {
    v18 = *v16;
    if (*v16)
    {
      CFRetain(*v16);
    }

    v19 = *v17;
    *v17 = v18;
    if (v19)
    {
      CFRelease(v19);
    }
  }

LABEL_17:
  v9 = cf;
  if (!cf)
  {
    v22 = 0;
    goto LABEL_27;
  }

LABEL_18:
  v11 = v4[21];
  v4[21] = 0;
  if (v11)
  {
    CFRelease(v11);
    v9 = cf;
    v22 = cf;
    if (!cf)
    {
LABEL_27:
      v21 = 0;
      coex::CommandDriver::Callback::operator()(v2 + 24, &v22, &v21);
      if (*(v2 + 48) != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v22 = v9;
  }

  CFRetain(v9);
  v12 = v22;
  v21 = 0;
  coex::CommandDriver::Callback::operator()(v2 + 24, &v22, &v21);
  if (v12)
  {
    CFRelease(v12);
  }

  if (*(v2 + 48) == 1)
  {
LABEL_28:
    v13 = *(v2 + 49);
    v14 = *(v2 + 40);
    v20 = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    coex::ARICommandDriver::setGPSState_sync(v4, v13, &v20);
    if (v14)
    {
      CFRelease(v14);
    }
  }

LABEL_32:
  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  MEMORY[0x29C264B10](v26);
  v6 = v29;
  if (v29)
  {
    goto LABEL_37;
  }
}

void sub_296DD8188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, const void *a19, __int16 a20, char a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a19);
  MEMORY[0x29C264B10](&a20);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v22 - 48);
  _Unwind_Resume(a1);
}

void sub_296DD8210(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x296DD81F8);
}

uint64_t __copy_helper_block_e8_32c154_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c154_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D6D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__1vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v17 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
LABEL_20:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v14[3] = v7;
        v15 = v7;
        v14[1] = v7;
        v14[2] = v7;
        v14[0] = v7;
        AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK::ARI_CsiIdcSetTxPowerLimitRspCb_SDK(v14, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p = operator new(0x20uLL);
        v12 = xmmword_296E1FAE0;
        strcpy(__p, "set txpower-limit threshold");
        coex::checkError(&cf, v14, 1225261056, &__p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!cf)
        {
          if (AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK::unpack(v14))
          {
            __p = operator new(0x38uLL);
            v12 = xmmword_296E22D60;
            strcpy(__p, "Failed to set txpower-limit threshold (unpack error)");
            CreateError();
            v9 = cf;
            cf = v10;
            if (!v9)
            {
              goto LABEL_13;
            }

            goto LABEL_10;
          }

          if (**(&v15 + 1))
          {
            __p = operator new(0x38uLL);
            v12 = xmmword_296E22D60;
            strcpy(__p, "Failed to set txpower-limit threshold (result error)");
            CreateError();
            v9 = cf;
            cf = v10;
            if (!v9)
            {
LABEL_13:
              if (SHIBYTE(v12) < 0)
              {
                operator delete(__p);
              }

              goto LABEL_15;
            }

LABEL_10:
            CFRelease(v9);
            goto LABEL_13;
          }
        }

LABEL_15:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C2651C0](v14);
        goto LABEL_20;
      }
    }
  }
}

void sub_296DD8658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C2651C0](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 48);
  _Unwind_Resume(a1);
}

void sub_296DD86BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C2651C0](&a18);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v18 - 48);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C2651C0](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v18 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c154_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__1EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c154_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver14setPolicy_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_1,std::allocator<coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_1>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_1,std::allocator<coex::ARICommandDriver::setPolicy_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_1>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver16setGPSState_syncEbN3ctu2cf11CFSharedRefIK14__CFDictionaryEEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v2[2];
      v6 = std::__shared_weak_count::lock(v3);
      v21 = v6;
      if (v6)
      {
        v7 = v6;
        if (!*v2)
        {
          goto LABEL_19;
        }

        v19 = 0xAAAAAAAAAAAAAAAALL;
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v18[2] = v8;
        v18[3] = v8;
        v18[0] = v8;
        v18[1] = v8;
        AriSdk::ARI_CsiIceGpsStateRspCb_SDK::ARI_CsiIceGpsStateRspCb_SDK(v18, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p[23] = 13;
        strcpy(__p, "set gps state");
        coex::checkError(&cf, v18, -183566336, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          v9 = cf;
          if (cf)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v9 = cf;
          if (cf)
          {
            goto LABEL_17;
          }
        }

        if (AriSdk::ARI_CsiIceGpsStateRspCb_SDK::unpack(v18))
        {
          *__p = operator new(0x28uLL);
          *&__p[8] = xmmword_296E22D70;
          strcpy(*__p, "Failed to set gps state (unpack error)");
          CreateError();
          v10 = cf;
          cf = v15;
          if (!v10)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!*v19)
          {
            v11 = (v2 + 3);
            v12 = (v4 + 168);
            if (v12 != v2 + 3)
            {
              v13 = *v11;
              if (*v11)
              {
                CFRetain(*v11);
              }

              v14 = *v12;
              *v12 = v13;
              if (v14)
              {
                CFRelease(v14);
              }
            }

LABEL_16:
            v9 = cf;
            if (!cf)
            {
LABEL_18:
              MEMORY[0x29C264530](v18);
LABEL_19:
              if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v7->__on_zero_shared)(v7);
                std::__shared_weak_count::__release_weak(v7);
              }

              return;
            }

LABEL_17:
            CFRelease(v9);
            goto LABEL_18;
          }

          *__p = operator new(0x28uLL);
          *&__p[8] = xmmword_296E22D70;
          strcpy(*__p, "Failed to set gps state (result error)");
          CreateError();
          v10 = cf;
          cf = v15;
          if (!v10)
          {
LABEL_14:
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            goto LABEL_16;
          }
        }

        CFRelease(v10);
        goto LABEL_14;
      }
    }
  }
}

void sub_296DD8AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264530](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 48);
  _Unwind_Resume(a1);
}

void sub_296DD8B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C264530](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v18 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c117_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver16setGPSState_syncEbN3ctu2cf11CFSharedRefIK14__CFDictionaryEEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c117_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver16setGPSState_syncEbN3ctu2cf11CFSharedRefIK14__CFDictionaryEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setGPSState_sync(BOOL,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::allocator<coex::ARICommandDriver::setGPSState_sync(BOOL,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D7D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setGPSState_sync(BOOL,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::allocator<coex::ARICommandDriver::setGPSState_sync(BOOL,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver18setWiFiStatus_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v18 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
          goto LABEL_20;
        }

        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15[3] = v7;
        v16 = v7;
        v15[1] = v7;
        v15[2] = v7;
        v15[0] = v7;
        AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK::ARI_CsiIdcSetWifiStatusRspCb_SDK(v15, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p[23] = 15;
        strcpy(__p, "set wifi status");
        coex::checkError(&cf, v15, 1225162752, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          v8 = cf;
          if (cf)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = cf;
          if (cf)
          {
LABEL_7:
            v12 = v8;
            goto LABEL_17;
          }
        }

        if (AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK::unpack(v15))
        {
          *__p = operator new(0x30uLL);
          *&__p[8] = xmmword_296E22D80;
          strcpy(*__p, "Failed to set wifi status (unpack error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!**(&v16 + 1))
          {
            goto LABEL_16;
          }

          *__p = operator new(0x30uLL);
          *&__p[8] = xmmword_296E22D80;
          strcpy(*__p, "Failed to set wifi status (result error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
LABEL_14:
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

LABEL_16:
            v8 = cf;
            v12 = cf;
            if (!cf)
            {
              v11 = 0;
              coex::CommandDriver::Callback::operator()((v2 + 3), &v12, &v11);
              v10 = cf;
              if (!cf)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

LABEL_17:
            CFRetain(v8);
            v11 = 0;
            coex::CommandDriver::Callback::operator()((v2 + 3), &v12, &v11);
            CFRelease(v8);
            v10 = cf;
            if (!cf)
            {
LABEL_19:
              MEMORY[0x29C264F80](v15);
LABEL_20:
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }

              return;
            }

LABEL_18:
            CFRelease(v10);
            goto LABEL_19;
          }
        }

        CFRelease(v9);
        goto LABEL_14;
      }
    }
  }
}

void sub_296DD8F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264F80](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c147_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver18setWiFiStatus_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_13CommandDriver8CallbackEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c147_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver18setWiFiStatus_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_13CommandDriver8CallbackEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setWiFiStatus_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setWiFiStatus_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setWiFiStatus_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setWiFiStatus_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver17setLAAConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v18 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
          goto LABEL_20;
        }

        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15[3] = v7;
        v16 = v7;
        v15[1] = v7;
        v15[2] = v7;
        v15[0] = v7;
        AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK::ARI_CsiIdcSetLaaConfigRspCb_SDK(v15, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p[23] = 14;
        strcpy(__p, "set LAA config");
        coex::checkError(&cf, v15, 1225293824, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          v8 = cf;
          if (cf)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = cf;
          if (cf)
          {
LABEL_7:
            v12 = v8;
            goto LABEL_17;
          }
        }

        if (AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK::unpack(v15))
        {
          *__p = operator new(0x28uLL);
          *&__p[8] = xmmword_296E22D40;
          strcpy(*__p, "Failed to set LAA config (unpack error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!**(&v16 + 1))
          {
            goto LABEL_16;
          }

          *__p = operator new(0x28uLL);
          *&__p[8] = xmmword_296E22D40;
          strcpy(*__p, "Failed to set LAA config (result error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
LABEL_14:
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

LABEL_16:
            v8 = cf;
            v12 = cf;
            if (!cf)
            {
              v11 = 0;
              coex::CommandDriver::Callback::operator()((v2 + 3), &v12, &v11);
              v10 = cf;
              if (!cf)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

LABEL_17:
            CFRetain(v8);
            v11 = 0;
            coex::CommandDriver::Callback::operator()((v2 + 3), &v12, &v11);
            CFRelease(v8);
            v10 = cf;
            if (!cf)
            {
LABEL_19:
              MEMORY[0x29C264D70](v15);
LABEL_20:
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }

              return;
            }

LABEL_18:
            CFRelease(v10);
            goto LABEL_19;
          }
        }

        CFRelease(v9);
        goto LABEL_14;
      }
    }
  }
}

void sub_296DD93E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264D70](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c157_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver17setLAAConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c157_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver17setLAAConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setLAAConfig_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setLAAConfig_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D8D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setLAAConfig_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setLAAConfig_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver25setFCMBCMAntennaMode_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v19 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
          goto LABEL_20;
        }

        v17 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v16[2] = v7;
        v16[3] = v7;
        v16[0] = v7;
        v16[1] = v7;
        AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK::ARI_IBIRfSetAntennaPortMappingResp_SDK(v16, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p = operator new(0x20uLL);
        v14 = xmmword_296E22D90;
        strcpy(__p, "set FCM BCM Antenna mode");
        coex::checkError(&cf, v16, 84508672, &__p);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p);
          v8 = cf;
          if (cf)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = cf;
          if (cf)
          {
LABEL_7:
            v12 = v8;
            goto LABEL_17;
          }
        }

        if (AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK::unpack(v16))
        {
          __p = operator new(0x38uLL);
          v14 = xmmword_296E22DA0;
          strcpy(__p, "Failed to set FCM BCM Antenna mode (unpack error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!*v17)
          {
            goto LABEL_16;
          }

          __p = operator new(0x38uLL);
          v14 = xmmword_296E22DA0;
          strcpy(__p, "Failed to set FCM BCM Antenna mode (status error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
LABEL_14:
            if (SHIBYTE(v14) < 0)
            {
              operator delete(__p);
            }

LABEL_16:
            v8 = cf;
            v12 = cf;
            if (!cf)
            {
              v11 = 0;
              coex::CommandDriver::Callback::operator()((v2 + 3), &v12, &v11);
              v10 = cf;
              if (!cf)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

LABEL_17:
            CFRetain(v8);
            v11 = 0;
            coex::CommandDriver::Callback::operator()((v2 + 3), &v12, &v11);
            CFRelease(v8);
            v10 = cf;
            if (!cf)
            {
LABEL_19:
              MEMORY[0x29C265560](v16);
LABEL_20:
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }

              return;
            }

LABEL_18:
            CFRelease(v10);
            goto LABEL_19;
          }
        }

        CFRelease(v9);
        goto LABEL_14;
      }
    }
  }
}

void sub_296DD98A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C265560](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c154_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver25setFCMBCMAntennaMode_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_13CommandDriver8CallbackEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c154_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver25setFCMBCMAntennaMode_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_13CommandDriver8CallbackEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setFCMBCMAntennaMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setFCMBCMAntennaMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setFCMBCMAntennaMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setFCMBCMAntennaMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::CommandDriver::Callback)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver23setLinkQualityMode_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEES9_NS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v20 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
LABEL_24:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }

        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v17[3] = v7;
        v18 = v7;
        v17[1] = v7;
        v17[2] = v7;
        v17[0] = v7;
        AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK(v17, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p[23] = 16;
        strcpy(__p, "set link quality");
        coex::checkError(&cf, v17, 1224835072, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v14 = 0;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v9 = Mutable;
        if (Mutable)
        {
          v14 = Mutable;
        }

        v10 = cf;
        if (cf)
        {
          v13 = cf;
          goto LABEL_19;
        }

        if (AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK::unpack(v17))
        {
          *__p = operator new(0x30uLL);
          *&__p[8] = xmmword_296E22DB0;
          strcpy(*__p, "Failed to set link quality (unpack error)");
          CreateError();
          v11 = cf;
          cf = v13;
          v13 = 0;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (!**(&v18 + 1))
          {
            goto LABEL_18;
          }

          *__p = operator new(0x30uLL);
          *&__p[8] = xmmword_296E22DB0;
          strcpy(*__p, "Failed to set link quality (result error)");
          CreateError();
          v11 = cf;
          cf = v13;
          v13 = 0;
          if (!v11)
          {
LABEL_16:
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

LABEL_18:
            v10 = cf;
            v13 = cf;
            if (!cf)
            {
              v12 = 0;
              coex::CommandDriver::Callback::operator()((v2 + 3), &v13, &v12);
              if (!v9)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

LABEL_19:
            CFRetain(v10);
            v12 = 0;
            coex::CommandDriver::Callback::operator()((v2 + 3), &v13, &v12);
            CFRelease(v10);
            if (!v9)
            {
LABEL_21:
              if (cf)
              {
                CFRelease(cf);
              }

              MEMORY[0x29C2656A0](v17);
              goto LABEL_24;
            }

LABEL_20:
            CFRelease(v9);
            goto LABEL_21;
          }
        }

        CFRelease(v11);
        goto LABEL_16;
      }
    }
  }
}

void sub_296DD9D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, const void *a19, __int16 a20, char a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a19);
  MEMORY[0x29C2656A0](&a20);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v22 - 48);
  _Unwind_Resume(a1);
}

void sub_296DD9DE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x296DD9DC8);
}

uint64_t __copy_helper_block_e8_32c166_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver23setLinkQualityMode_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEES8_NS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c166_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver23setLinkQualityMode_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEES8_NS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setLinkQualityMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setLinkQualityMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0D9D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setLinkQualityMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setLinkQualityMode_sync(ctu::cf::CFSharedRef<__CFDictionary const>,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v19 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
          goto LABEL_20;
        }

        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v16[3] = v7;
        v17 = v7;
        v16[1] = v7;
        v16[2] = v7;
        v16[0] = v7;
        AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK::ARI_CsiIdcRTSetScanFreqRspCb_SDK(v16, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p = operator new(0x20uLL);
        v14 = xmmword_296E22DC0;
        strcpy(__p, "set scan freq band filter");
        coex::checkError(&cf, v16, 1224900608, &__p);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p);
          v8 = cf;
          if (cf)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = cf;
          if (cf)
          {
LABEL_7:
            v12 = v8;
            goto LABEL_17;
          }
        }

        if (AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK::unpack(v16))
        {
          __p = operator new(0x38uLL);
          v14 = xmmword_296E22DD0;
          strcpy(__p, "Failed to set scan freq band filter (unpack error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!**(&v17 + 1))
          {
            goto LABEL_16;
          }

          __p = operator new(0x38uLL);
          v14 = xmmword_296E22DD0;
          strcpy(__p, "Failed to set scan freq band filter (result error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
LABEL_14:
            if (SHIBYTE(v14) < 0)
            {
              operator delete(__p);
            }

LABEL_16:
            v8 = cf;
            v12 = cf;
            if (!cf)
            {
              v11 = 0;
              coex::CommandDriver::Callback::operator()((v2 + 3), &v12, &v11);
              v10 = cf;
              if (!cf)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

LABEL_17:
            CFRetain(v8);
            v11 = 0;
            coex::CommandDriver::Callback::operator()((v2 + 3), &v12, &v11);
            CFRelease(v8);
            v10 = cf;
            if (!cf)
            {
LABEL_19:
              MEMORY[0x29C264F30](v16);
LABEL_20:
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }

              return;
            }

LABEL_18:
            CFRelease(v10);
            goto LABEL_19;
          }
        }

        CFRelease(v9);
        goto LABEL_14;
      }
    }
  }
}

void sub_296DDA234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C264F30](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c166_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c166_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setScanFreqBandFilter_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setScanFreqBandFilter_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0DA50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setScanFreqBandFilter_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setScanFreqBandFilter_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN4coex16ARICommandDriver19setRC1Duration_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS2_5SubIdENS2_13CommandDriver8CallbackEE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      v18 = v5;
      if (v5)
      {
        v6 = v5;
        if (!*v2)
        {
          goto LABEL_20;
        }

        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15[3] = v7;
        v16 = v7;
        v15[1] = v7;
        v15[2] = v7;
        v15[0] = v7;
        AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK::ARI_CsiIdcSetRadio1RspCb_SDK(v15, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p[23] = 16;
        strcpy(__p, "set rc1 duration");
        coex::checkError(&cf, v15, 1225326592, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          v8 = cf;
          if (cf)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = cf;
          if (cf)
          {
LABEL_7:
            v12 = v8;
            goto LABEL_17;
          }
        }

        if (AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK::unpack(v15))
        {
          *__p = operator new(0x30uLL);
          *&__p[8] = xmmword_296E22DB0;
          strcpy(*__p, "Failed to set rc1 duration (unpack error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!**(&v16 + 1))
          {
            goto LABEL_16;
          }

          *__p = operator new(0x30uLL);
          *&__p[8] = xmmword_296E22DB0;
          strcpy(*__p, "Failed to set rc1 duration (result error)");
          CreateError();
          v9 = cf;
          cf = v12;
          v12 = 0;
          if (!v9)
          {
LABEL_14:
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

LABEL_16:
            v8 = cf;
            v12 = cf;
            if (!cf)
            {
              v11 = 0;
              coex::CommandDriver::Callback::operator()((v2 + 2), &v12, &v11);
              v10 = cf;
              if (!cf)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

LABEL_17:
            CFRetain(v8);
            v11 = 0;
            coex::CommandDriver::Callback::operator()((v2 + 2), &v12, &v11);
            CFRelease(v8);
            v10 = cf;
            if (!cf)
            {
LABEL_19:
              MEMORY[0x29C2646F0](v15);
LABEL_20:
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }

              return;
            }

LABEL_18:
            CFRelease(v10);
            goto LABEL_19;
          }
        }

        CFRelease(v9);
        goto LABEL_14;
      }
    }
  }
}

void sub_296DDA6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C2646F0](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c159_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver19setRC1Duration_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c159_ZTSNSt3__110shared_ptrIZN4coex16ARICommandDriver19setRC1Duration_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdENS1_13CommandDriver8CallbackEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setRC1Duration_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setRC1Duration_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0DAD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<coex::ARICommandDriver::setRC1Duration_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0,std::allocator<coex::ARICommandDriver::setRC1Duration_sync(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId,coex::CommandDriver::Callback)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 292);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 288);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 296);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 296) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 296);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 296) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 296);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 296) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296DDB21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296DDB230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 292) > *(*result + 288))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
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
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E0DB80;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E0DB20;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
      if (v56)
      {
        if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v56 + 16))(v56);
          if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v56 + 24))(v56);
          }
        }
      }

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296DDB9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>>::~slot_call_iterator_cache(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 296);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[8] = v3;
    v9[9] = v3;
    v9[6] = v3;
    v9[7] = v3;
    v9[4] = v3;
    v9[5] = v3;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v10 = 10;
    __p = v9;
    v12 = 0;
    v13 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 296), v9);
    (*(*v13 + 32))(v13);
    v4 = __p;
    if (__p)
    {
      if (v12 > 0)
      {
        v7 = __p + 16 * v12;
        do
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          v7 -= 16;
        }

        while (v7 > v4);
      }

      if (v10 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296DDC3B8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

void BudgetData::BudgetData(BudgetData *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
}

void BudgetData::~BudgetData(BudgetData *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

void BudgetData::BudgetData(BudgetData *this, const BudgetData *a2)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  if (this != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this, *a2, a2 + 1);
  }
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  if (this != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this, *a2, a2 + 1);
  }
}

void *BudgetData::BudgetData(void *result, uint64_t a2)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *result = *a2;
  v2 = *(a2 + 8);
  *a2 = result + 1;
  *(result + 1) = v2;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (result[2])
  {
    v3 = (result[1] + 16);
  }

  else
  {
    v3 = result;
  }

  *v3 = result + 1;
  *a2 = a2 + 8;
  return result;
}

{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  *result = *a2;
  v2 = *(a2 + 8);
  *a2 = result + 1;
  *(result + 1) = v2;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  if (result[2])
  {
    v3 = (result[1] + 16);
  }

  else
  {
    v3 = result;
  }

  *v3 = result + 1;
  *a2 = a2 + 8;
  return result;
}

void **BudgetData::operator=(void **result, void **a2)
{
  if (a2 != result)
  {
    v2 = result;
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(result, *a2, a2 + 1);
    return v2;
  }

  return result;
}

uint64_t BudgetData::get(uint64_t **a1, unsigned int a2)
{
  v2 = a2;
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 28);
        if (v7 <= a2)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= a2)
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = (a1 + 1);
LABEL_8:
    v8 = v6;
    v6 = operator new(0x28uLL);
    *(v6 + 28) = v2;
    *(v6 + 32) = 0;
    *(v6 + 36) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **a1;
    if (v9)
    {
      *a1 = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v6);
    a1[2] = (a1[2] + 1);
  }

  return v6[4];
}

uint64_t *BudgetData::set(uint64_t *result, unsigned int a2, int a3)
{
  v4 = a2;
  v5 = result;
  v7 = result + 1;
  v6 = result[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 28);
        if (v9 <= a2)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v7 = v8 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = result + 1;
LABEL_8:
    v10 = v8;
    v8 = operator new(0x28uLL);
    *(v8 + 28) = v4;
    *(v8 + 32) = 0;
    *(v8 + 36) = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v7 = v8;
    v11 = **v5;
    if (v11)
    {
      *v5 = v11;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v5[1], v8);
    ++v5[2];
  }

  *(v8 + 8) = a3;
  *(v8 + 36) = 1;
  return result;
}

void BudgetData::clear(BudgetData *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
}

void *BudgetData::for_each(void *result, uint64_t a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result != result + 1)
  {
    do
    {
      v5 = *(a2 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v5 + 48))(v5, v3 + 28, v3 + 4);
      if (!result)
      {
        break;
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  return result;
}

void std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(void **a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v34 = v10[1];
        if (!v34)
        {
          break;
        }

        do
        {
          v10 = v34;
          v34 = *v34;
        }

        while (v34);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v24 = a2;
    while (1)
    {
      v12 = v10;
      v25 = *(v24 + 28);
      *(v9 + 28) = v25;
      v26 = *(v24 + 8);
      *(v9 + 36) = *(v24 + 36);
      *(v9 + 8) = v26;
      v27 = *v8;
      v28 = a1 + 1;
      v29 = a1 + 1;
      if (*v8)
      {
        break;
      }

LABEL_38:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v28;
      *v29 = v9;
      v30 = **a1;
      if (v30)
      {
        goto LABEL_39;
      }

LABEL_40:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
      a1[2] = (a1[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v32 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v33 = v10[1];
              if (!v33)
              {
                break;
              }

              do
              {
                v10 = v33;
                v33 = *v33;
              }

              while (v33);
            }
          }

          else
          {
            for (v10[1] = 0; v32; v32 = v10[1])
            {
              do
              {
                v10 = v32;
                v32 = *v32;
              }

              while (v32);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v31 = v24[1];
      if (v31)
      {
        do
        {
          a2 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          a2 = v24[2];
          v23 = *a2 == v24;
          v24 = a2;
        }

        while (!v23);
      }

      if (v12)
      {
        v24 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v28 = v27;
        if (v25 >= *(v27 + 28))
        {
          break;
        }

        v27 = *v27;
        v29 = v28;
        if (!*v28)
        {
          goto LABEL_38;
        }
      }

      v27 = v27[1];
    }

    while (v27);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v28;
    v28[1] = v9;
    v30 = **a1;
    if (!v30)
    {
      goto LABEL_40;
    }

LABEL_39:
    *a1 = v30;
    goto LABEL_40;
  }

  v12 = v9;
LABEL_13:
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    v14 = a1 + 1;
    while (1)
    {
      v15 = operator new(0x28uLL);
      v16 = *(a2 + 9);
      *(v15 + 28) = *(a2 + 28);
      *(v15 + 9) = v16;
      v17 = *v14;
      v18 = a1 + 1;
      v19 = a1 + 1;
      if (*v14)
      {
        break;
      }

LABEL_25:
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 2) = v18;
      *v19 = v15;
      v20 = **a1;
      if (v20)
      {
        goto LABEL_26;
      }

LABEL_27:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
      a1[2] = (a1[2] + 1);
      v21 = a2[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = a2[2];
          v23 = *v22 == a2;
          a2 = v22;
        }

        while (!v23);
      }

      a2 = v22;
      if (v22 == a3)
      {
        return;
      }
    }

    do
    {
      while (1)
      {
        v18 = v17;
        if (v15[28] >= *(v17 + 28))
        {
          break;
        }

        v17 = *v17;
        v19 = v18;
        if (!*v18)
        {
          goto LABEL_25;
        }
      }

      v17 = v17[1];
    }

    while (v17);
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v18;
    v18[1] = v15;
    v20 = **a1;
    if (!v20)
    {
      goto LABEL_27;
    }

LABEL_26:
    *a1 = v20;
    goto LABEL_27;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void ARIWorkoutCommandDriver::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x50uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  ARIWorkoutCommandDriver::ARIWorkoutCommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ARIWorkoutCommandDriver>::shared_ptr[abi:ne200100]<ARIWorkoutCommandDriver,std::shared_ptr<ARIWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<ARIWorkoutCommandDriver>(ARIWorkoutCommandDriver*)::{lambda(ARIWorkoutCommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;

  ARIWorkoutCommandDriver::init(v8);
}

void sub_296DDCE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void ARIWorkoutCommandDriver::init(ARIWorkoutCommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<WorkoutCommandDriver>::execute_wrapped<ARIWorkoutCommandDriver::init(void)::$_0>(ARIWorkoutCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ARIWorkoutCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<ARIWorkoutCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void *ARIWorkoutCommandDriver::ARIWorkoutCommandDriver(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E0DCB8;
  ctu::OsLogContext::OsLogContext(v11, "com.apple.telephony.abm", "workout.drv");
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create("workout.drv", v5);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    a1[4] = 0;
    dispatch_release(v7);
  }

  else
  {
    a1[4] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C2639F0](a1 + 5, v12);
  MEMORY[0x29C263A00](v12);
  ctu::OsLogContext::~OsLogContext(v11);
  *a1 = &unk_2A1E0DCB8;
  a1[6] = v4;
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  *a1 = &unk_2A1E0DBE0;
  v8 = a1[3];
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ice::Client::create();
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_296DDD0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  WorkoutCommandDriver::~WorkoutCommandDriver(v9);
  _Unwind_Resume(a1);
}

void WorkoutCommandDriver::~WorkoutCommandDriver(WorkoutCommandDriver *this)
{
  *this = &unk_2A1E0DCB8;
  v2 = *(this + 7);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C263A00](this + 40);
  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void ARIWorkoutCommandDriver::~ARIWorkoutCommandDriver(ARIWorkoutCommandDriver *this)
{
  *this = &unk_2A1E0DBE0;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v9, 2u);
  }

  v4 = *(this + 9);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E0DCB8;
  v5 = *(this + 7);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  MEMORY[0x29C263A00](v2);
  v6 = *(this + 4);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

{
  ARIWorkoutCommandDriver::~ARIWorkoutCommandDriver(this);

  operator delete(v1);
}

void ARIWorkoutCommandDriver::sendWorkoutInfo(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  object = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v5 = *(a3 + 24);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    object = xpc_null_create();
    v5 = *(a3 + 24);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v5 == a3)
  {
    v18 = v17;
    (*(*v5 + 24))(v5, v17);
    goto LABEL_9;
  }

  v5 = (*(*v5 + 16))(v5);
LABEL_7:
  v18 = v5;
LABEL_9:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x30uLL);
  *v10 = a1;
  v10[1] = object;
  if (object)
  {
    xpc_retain(object);
    v11 = v18;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_16:
    v10[5] = 0;
    goto LABEL_18;
  }

  v10[1] = xpc_null_create();
  v11 = v18;
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v11 == v17)
  {
    v10[5] = v10 + 2;
    (*(*v11 + 24))(v11);
  }

  else
  {
    v10[5] = v11;
    v18 = 0;
  }

LABEL_18:
  v12 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7;
  v13[2] = v9;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<WorkoutCommandDriver>::execute_wrapped<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>(ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0,std::default_delete<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v18;
    if (v18 != v17)
    {
      goto LABEL_20;
    }

LABEL_23:
    (*(*v14 + 32))(v14);
    goto LABEL_24;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v14 = v18;
  if (v18 == v17)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

LABEL_24:
  xpc_release(object);
  v15 = *MEMORY[0x29EDCA608];
}

void sub_296DDD634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

atomic_ullong *std::shared_ptr<ARIWorkoutCommandDriver>::shared_ptr[abi:ne200100]<ARIWorkoutCommandDriver,std::shared_ptr<ARIWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<ARIWorkoutCommandDriver>(ARIWorkoutCommandDriver*)::{lambda(ARIWorkoutCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0DCE0;
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

void sub_296DDD79C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<ARIWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<ARIWorkoutCommandDriver>(ARIWorkoutCommandDriver*)::{lambda(ARIWorkoutCommandDriver*)#1}::operator() const(ARIWorkoutCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ARIWorkoutCommandDriver *,std::shared_ptr<ARIWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<ARIWorkoutCommandDriver>(ARIWorkoutCommandDriver*)::{lambda(ARIWorkoutCommandDriver *)#1},std::allocator<ARIWorkoutCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ARIWorkoutCommandDriver *,std::shared_ptr<ARIWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<ARIWorkoutCommandDriver>(ARIWorkoutCommandDriver*)::{lambda(ARIWorkoutCommandDriver *)#1},std::allocator<ARIWorkoutCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI20WorkoutCommandDriverE15make_shared_ptrI23ARIWorkoutCommandDriverEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI20WorkoutCommandDriverE15make_shared_ptrI23ARIWorkoutCommandDriverEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI20WorkoutCommandDriverE15make_shared_ptrI23ARIWorkoutCommandDriverEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI20WorkoutCommandDriverE15make_shared_ptrI23ARIWorkoutCommandDriverEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<ARIWorkoutCommandDriver> ctu::SharedSynchronizable<WorkoutCommandDriver>::make_shared_ptr<ARIWorkoutCommandDriver>(ARIWorkoutCommandDriver*)::{lambda(ARIWorkoutCommandDriver*)#1}::operator() const(ARIWorkoutCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutCommandDriver>::execute_wrapped<ARIWorkoutCommandDriver::init(void)::$_0>(ARIWorkoutCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ARIWorkoutCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<ARIWorkoutCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v5 = *(v3 + 64);
  *buf = MEMORY[0x29EDCA5F8];
  v11 = 0x40000000;
  v12 = ___ZZN23ARIWorkoutCommandDriver4initEvENK3__0clEv_block_invoke;
  v13 = &__block_descriptor_tmp_8;
  v14 = v3;
  v8[0] = buf;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v5, 0, v8);
  v6 = *(v3 + 64);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___ZZN23ARIWorkoutCommandDriver4initEvENK3__0clEv_block_invoke_7;
  v8[3] = &__block_descriptor_tmp_8_0;
  v8[4] = v3;
  v9 = v8;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v6, 1, &v9);
  ice::Client::start(*(v3 + 64));
  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_296DDDA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ___ZZN23ARIWorkoutCommandDriver4initEvENK3__0clEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D Started", v2, 2u);
  }
}

void ___ZZN23ARIWorkoutCommandDriver4initEvENK3__0clEv_block_invoke_7(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D Stopped", v2, 2u);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<WorkoutCommandDriver>::execute_wrapped<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>(ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0,std::default_delete<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v64 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v43 = *a1;
  v2 = (*a1)->__vftable;
  value = xpc_dictionary_get_value((*a1)->__shared_owners_, "kKeyWorkoutType");
  *&object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v5 = xpc_dictionary_get_value(v1->__shared_owners_, "kKeyWorkoutState");
  *&object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *&object = xpc_null_create();
  }

  v6 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v7 = xpc_dictionary_get_value(v1->__shared_owners_, "kKeyWorkoutLocation");
  *&object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *&object = xpc_null_create();
  }

  v8 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v9 = xpc_dictionary_get_value(v1->__shared_owners_, "kKeySwimLocation");
  *&object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *&object = xpc_null_create();
  }

  v10 = xpc::dyn_cast_or_default();
  xpc_release(object);
  v11 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *&object = __PAIR64__(v4, 67109888);
    WORD4(object) = 1024;
    *(&object + 10) = v6;
    HIWORD(object) = 1024;
    LODWORD(v58) = v8;
    WORD2(v58) = 1024;
    *(&v58 + 6) = v10;
    _os_log_impl(&dword_296D7D000, v11, OS_LOG_TYPE_DEFAULT, "#I Workout info: Type=%d State=%d Loc=%d SwimLoc=%d", &object, 0x1Au);
  }

  v63 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61 = v12;
  v62 = v12;
  v59 = v12;
  v60 = v12;
  object = v12;
  v58 = v12;
  AriSdk::ARI_IBICpsHealthActivityReq_SDK::ARI_IBICpsHealthActivityReq_SDK(&object);
  v13 = operator new(4uLL);
  *v13 = v4;
  v14 = *(&v61 + 1);
  *(&v61 + 1) = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(4uLL);
  *v15 = v6;
  v16 = v62;
  *&v62 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  if (v8)
  {
    v17 = operator new(4uLL);
    *v17 = v8;
    v18 = *(&v62 + 1);
    *(&v62 + 1) = v17;
    if (v18)
    {
      operator delete(v18);
    }
  }

  if (v10)
  {
    v19 = operator new(4uLL);
    *v19 = v10;
    v20 = v63;
    v63 = v19;
    if (v20)
    {
      operator delete(v20);
    }
  }

  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v22 = v2->~__shared_weak_count_0, (v23 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = v23;
  p_shared_weak_owners = &v23->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v24);
  }

  get_deleter = v2[1].__get_deleter;
  v53[0] = v22;
  v53[1] = v24;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v54 = v2;
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    goto LABEL_32;
  }

  if (shared_weak_owners != &v1->__shared_weak_owners_)
  {
    shared_weak_owners = (*(*shared_weak_owners + 16))(shared_weak_owners);
LABEL_32:
    v56 = shared_weak_owners;
    goto LABEL_34;
  }

  v56 = v55;
  (*(*shared_weak_owners + 24))(shared_weak_owners, v55);
LABEL_34:
  v28 = operator new(0x50uLL);
  v28->__shared_owners_ = 0;
  p_shared_owners = &v28->__shared_owners_;
  v28->__shared_weak_owners_ = 0;
  v28[1].std::__shared_count = *v53;
  v28->__vftable = &unk_2A1E0DD60;
  v53[0] = 0;
  v53[1] = 0;
  v30 = v56;
  v28[1].__shared_weak_owners_ = v54;
  if (v30)
  {
    if (v30 == v55)
    {
      v28[3].__vftable = &v28[2];
      (*(v30->~__shared_weak_count + 3))(v30);
    }

    else
    {
      v28[3].__vftable = v30;
      v56 = 0;
    }
  }

  else
  {
    v28[3].__vftable = 0;
  }

  *&v44 = MEMORY[0x29EDCA5F8];
  *(&v44 + 1) = 1174405120;
  *&v45 = ___ZN3ice6detail12wrapCallbackIZZN23ARIWorkoutCommandDriver15sendWorkoutInfoEN3xpc4dictENSt3__18functionIFvbEEEENK3__0clEvEUlPKhjE_vEEN8dispatch5blockIU13block_pointerFiPhjEEENS5_17integral_constantIiLi2EEEOT__block_invoke;
  *(&v45 + 1) = &__block_descriptor_tmp_12_0;
  v46 = &v28[1];
  v47 = v28;
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v49 = 0x40000000;
  v50 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_7;
  v51 = &unk_29EE5BBC8;
  v52 = &v44;
  v31 = _Block_copy(&aBlock);
  v32 = v47;
  if (!v47 || atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_42;
    }

LABEL_45:
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    if (v61)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v32);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_45;
  }

LABEL_42:
  if (v61)
  {
    goto LABEL_47;
  }

LABEL_46:
  v33 = operator new(4uLL);
  *v33 = 0;
  *&v61 = v33;
LABEL_47:
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v34;
  v45 = v34;
  v35 = *(get_deleter + 2);
  aBlock = *(get_deleter + 1);
  if (!v35)
  {
    v49 = 0;
LABEL_75:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v49 = std::__shared_weak_count::lock(v35);
  if (!v49)
  {
    goto LABEL_75;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v36 = v49;
  if (v49 && !atomic_fetch_add((v49 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  ice::SendMsgBaseProxy::callback();
  if (v31)
  {
    _Block_release(v31);
  }

  MEMORY[0x29C263BF0](&v44);
  if (v56 == v55)
  {
    (*(v56->~__shared_weak_count + 4))(v56);
    v37 = v53[1];
    if (v53[1])
    {
LABEL_58:
      std::__shared_weak_count::__release_weak(v37);
    }
  }

  else
  {
    if (v56)
    {
      (*(v56->~__shared_weak_count + 5))();
    }

    v37 = v53[1];
    if (v53[1])
    {
      goto LABEL_58;
    }
  }

  std::__shared_weak_count::__release_weak(v24);
  MEMORY[0x29C264DC0](&object);
  if (v43)
  {
    v38 = v43[1].__shared_weak_owners_;
    if (v38 == &v43->__shared_weak_owners_)
    {
      (*(*v38 + 32))(v38);
    }

    else if (v38)
    {
      (*(*v38 + 40))(v38);
    }

    xpc_release(v43->__shared_owners_);
    operator delete(v43);
  }

  v39 = a1;
  if (a1)
  {
    v40 = a1[2];
    if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
      v39 = a1;
    }

    operator delete(v39);
  }

  v41 = *MEMORY[0x29EDCA608];
}

void sub_296DDE2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *aBlock, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0,std::default_delete<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3 == v1 + 16)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    xpc_release(*(v1 + 8));
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(uint64_t a1)
{
  v2 = a1 + 24;
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 8);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
LABEL_5:
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN23ARIWorkoutCommandDriver15sendWorkoutInfoEN3xpc4dictENSt3__18functionIFvbEEEENK3__0clEvEUlPKhjE_vEEN8dispatch5blockIU13block_pointerFiPhjEEENS5_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_16;
  }

  v21 = 0;
  v22 = 0;
  v3 = v2[1];
  v4 = v2[2];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v6 = std::__shared_weak_count::lock(v3);
  v22 = v6;
  if (!v6 || (v21 = *v2) == 0)
  {
LABEL_13:
    LOBYTE(v19[0]) = 0;
    v11 = v2[6];
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v11 + 48))(v11, v19);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_32;
    }

LABEL_16:
    v12 = *MEMORY[0x29EDCA608];
    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[3] = v7;
  v20 = v7;
  v19[1] = v7;
  v19[2] = v7;
  v19[0] = v7;
  AriSdk::ARI_IBICpsHealthActivityRsp_SDK::ARI_IBICpsHealthActivityRsp_SDK(v19, a2);
  memset(__p, 170, sizeof(__p));
  v24 = 17;
  strcpy(buf, "set workout state");
  checkErrorStr(v19, buf, __p);
  if (v24 < 0)
  {
    operator delete(*buf);
    v13 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v13 = __p[1];
    }

    if (v13)
    {
      goto LABEL_9;
    }

LABEL_20:
    if (AriSdk::ARI_IBICpsHealthActivityRsp_SDK::unpack(v19))
    {
      v14 = *(v4 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296D7D000, v14, OS_LOG_TYPE_ERROR, "Failed to set workout state (unpack error)", buf, 2u);
        buf[0] = 0;
        v10 = v2[6];
        if (v10)
        {
          goto LABEL_29;
        }
      }

      else
      {
        buf[0] = 0;
        v10 = v2[6];
        if (v10)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v15 = **(&v20 + 1);
      if (**(&v20 + 1))
      {
        v16 = *(v4 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v15;
          _os_log_error_impl(&dword_296D7D000, v16, OS_LOG_TYPE_ERROR, "Failed to set workout state (result error: %d)", buf, 8u);
          buf[0] = 0;
          v10 = v2[6];
          if (v10)
          {
            goto LABEL_29;
          }
        }

        else
        {
          buf[0] = 0;
          v10 = v2[6];
          if (v10)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        buf[0] = 1;
        v10 = v2[6];
        if (v10)
        {
          goto LABEL_29;
        }
      }
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  v8 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v8 = __p[1];
  }

  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_9:
  v9 = *(v4 + 40);
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 0;
    v10 = v2[6];
    if (v10)
    {
      goto LABEL_29;
    }

LABEL_34:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  *buf = 0;
  _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "Failed to set workout state (response error)", buf, 2u);
  buf[0] = 0;
  v10 = v2[6];
  if (!v10)
  {
    goto LABEL_34;
  }

LABEL_29:
  (*(*v10 + 48))(v10, buf);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x29C264DF0](v19);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }

LABEL_32:
  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296DDE934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 57) < 0)
  {
    operator delete(*(v5 - 80));
  }

  MEMORY[0x29C264DF0](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v5 - 96);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c122_ZTSNSt3__110shared_ptrIZZN23ARIWorkoutCommandDriver15sendWorkoutInfoEN3xpc4dictENS_8functionIFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c122_ZTSNSt3__110shared_ptrIZZN23ARIWorkoutCommandDriver15sendWorkoutInfoEN3xpc4dictENS_8functionIFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0DD60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<ARIWorkoutCommandDriver::sendWorkoutInfo(xpc::dict,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 32);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
LABEL_5:

    std::__shared_weak_count::__release_weak(v4);
  }
}

char *abm::data::getDataPropertyNameFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x29C266420](*a1) != MEMORY[0x29EDCAA00])
  {
    return "Unknown";
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v3 < 5)
  {
    return off_29EE5BBF8[v3 & 7];
  }

  else
  {
    return "Unknown";
  }
}

uint64_t abm::data::getDataPropertyTypeFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x29C266420](*a1) != MEMORY[0x29EDCAA00])
  {
    return 5;
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default();
  xpc_release(object);
  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void abm::data::DataAggregationProtocol::toDict(abm::data::DataAggregationProtocol *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C266420](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationProtocol", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationProtocol::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationProtocol", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

const char *abm::data::DataAggregationProtocol::asString(abm::data::DataAggregationProtocol *this)
{
  v1 = *(this + 3);
  if (v1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_29EE5BC20[v1];
  }
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::createDictForGet(xpc_object_t *a1@<X8>)
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

  if (MEMORY[0x29C266420](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DDB0;
  *(a2 + 8) = 0x3AAAAAA01;
  if (MEMORY[0x29C266420](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationProtocol"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationProtocol");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default();
    xpc_release(object);
    if (v5)
    {
      if (v5 == 1)
      {
        *(a2 + 12) = 1;
      }

      else if (v5 == 2)
      {
        *(a2 + 12) = 2;
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 12) = 3;
      }
    }

    else
    {
      *(a2 + 12) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationProtocol>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DDB0;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  if (result >= 3)
  {
    *(a2 + 8) = 0;
    result = 3;
  }

  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxDatagrams::toDict(abm::data::DataAggregationMaxDatagrams *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C266420](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(1);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxDatagrams", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxDatagrams::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxDatagrams", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::createDictForGet(xpc_object_t *a1@<X8>)
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

  if (MEMORY[0x29C266420](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(1);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DDF8;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x29C266420](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DDF8;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxSize::toDict(abm::data::DataAggregationMaxSize *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C266420](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxSize", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxSize::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxSize", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::createDictForGet(xpc_object_t *a1@<X8>)
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

  if (MEMORY[0x29C266420](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DE40;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x29C266420](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DE40;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataFlowControl::toDict(abm::data::DataFlowControl *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C266420](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataFlowControl", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataFlowControl::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataFlowControl", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::createDictForGet(xpc_object_t *a1@<X8>)
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

  if (MEMORY[0x29C266420](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DE88;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x29C266420](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataFlowControl"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataFlowControl");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataFlowControl>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DE88;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

void abm::data::DataPowerSave::toDict(abm::data::DataPowerSave *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C266420](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(4);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataPowerSave", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataPowerSave::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataPowerSave", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::createDictForGet(xpc_object_t *a1@<X8>)
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

  if (MEMORY[0x29C266420](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DED0;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x29C266420](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataPowerSave"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataPowerSave");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataPowerSave>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E0DED0;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296D7D000);
  }

  return result;
}

uint64_t __cxx_global_var_init_13()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy, &ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance, &dword_296D7D000);
  }

  return result;
}

uint64_t abm::debug::registerLogHandlers(abm::debug *this)
{
  if (!_MergedGlobals_2)
  {
    this = os_log_create("com.apple.telephony.abm", "libtu");
    _MergedGlobals_2 = this;
  }

  capabilities::abs::TUDebugFlags(this);
  TelephonyUtilDebugSetFlags();
  v1 = TelephonyUtilDebugRegisterDelegate();
  v2 = capabilities::radio::ice(v1);
  if ((v2 & 1) != 0 || (v3 = capabilities::radio::initium(v2), v3))
  {
    if (!qword_2A18CA890)
    {
      qword_2A18CA890 = os_log_create("com.apple.telephony.abm", "libktl");
    }

    KTLDebugRegisterDelegate();
    KTLDebugSetFlags();
    if (!qword_2A18CA898)
    {
      goto LABEL_8;
    }
  }

  else
  {
    capabilities::radio::maverick(v3);
    if (!qword_2A18CA898)
    {
LABEL_8:
      qword_2A18CA898 = os_log_create("com.apple.telephony.abm", "bbu");
    }
  }

  return MEMORY[0x2A1C6CFB8](0, abm::debug::handleDebugPrintBBU);
}

void abm::debug::handleDebugPrintBinaryTelephonyUtil(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = "misc";
  if (!a2)
  {
    v4 = "send";
  }

  if (a2 == 1)
  {
    v5 = "recv";
  }

  else
  {
    v5 = v4;
  }

  abm::debug::handleDebugPrintBinary(0, v5, a3, a4);
}

void abm::debug::handleDebugPrintBinaryKTL(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 > 3)
  {
    v4 = "";
  }

  else
  {
    v4 = off_29EE5BC58[a2];
  }

  abm::debug::handleDebugPrintBinary(2, v4, a3, a4);
}

uint64_t abm::debug::handleDebugPrintBBU(abm::debug *this, void *a2, const char *a3, const char *a4)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[7] = v6;
  v29[8] = v6;
  v29[5] = v6;
  v29[6] = v6;
  v29[3] = v6;
  v29[4] = v6;
  v29[1] = v6;
  v29[2] = v6;
  v29[0] = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  *__p = v6;
  v23 = v6;
  v24 = v6;
  v22 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v7 = MEMORY[0x29C265D60](&v22, a2);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = strlen(a3);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a3, v9);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v16 = v28;
    if (v28 < *(&v25 + 1))
    {
      *&v28 = *(&v25 + 1);
      v16 = *(&v25 + 1);
    }

    v17 = v25;
    v14 = v16 - v25;
    if ((v16 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v14 = 0;
      HIBYTE(__dst[2]) = 0;
      v15 = __dst;
      goto LABEL_15;
    }

    v17 = *(&v23 + 1);
    v14 = *(&v24 + 1) - *(&v23 + 1);
    if (*(&v24 + 1) - *(&v23 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v15 = operator new(v18);
    __dst[1] = v14;
    __dst[2] = (v18 | 0x8000000000000000);
    __dst[0] = v15;
    goto LABEL_14;
  }

  HIBYTE(__dst[2]) = v14;
  v15 = __dst;
  if (v14)
  {
LABEL_14:
    v10 = memmove(v15, v17, v14);
  }

LABEL_15:
  *(v15 + v14) = 0;
  v19 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v19 = __dst[0];
  }

  abm::debug::handleDebugPrintBBUHelper(v10, v11, v12, v13, v19);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v22 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v23);
  std::ostream::~ostream();
  return MEMORY[0x29C265F10](v29);
}

void sub_296DE0860(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C265F10](va);
  _Unwind_Resume(a1);
}

uint64_t abm::debug::handleDebugPrint(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x29EDCA608];
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[1] = v9;
  v45[2] = v9;
  v45[0] = v9;
  ctu::LogMessageBuffer::LogMessageBuffer(v45);
  if (a3 && *a3)
  {
    v10 = MEMORY[0x29C263BD0](v45, a3);
    MEMORY[0x29C263BD0](v10, ": ");
  }

  MEMORY[0x29C263A60](&v43, a4, a5);
  ctu::operator<<();
  v11 = MEMORY[0x29C263A80](&v43);
  ctu::Clock::now_in_nanoseconds(v11);
  v12 = operator new(0x60uLL);
  v13 = abm::debug::kLogDomainMap[a2];
  v14 = strlen(v13);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
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
    __p[1] = v15;
    v42 = v17 | 0x8000000000000000;
    __p[0] = v16;
    goto LABEL_12;
  }

  HIBYTE(v42) = v14;
  v16 = __p;
  if (v14)
  {
LABEL_12:
    memmove(v16, v13, v15);
  }

  *(v15 + v16) = 0;
  MEMORY[0x29C263A40](v45);
  ctu::LogMessageBuffer::takeMetadata(v45);
  ctu::LogMessage::LogMessage();
  v43 = v12;
  v18 = operator new(0x20uLL);
  v18->__vftable = &unk_2A1E0DF40;
  v18->__shared_owners_ = 0;
  v18->__shared_weak_owners_ = 0;
  v18[1].__vftable = v12;
  v44 = v18;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
    v19 = v12 + 2;
    v20 = SHIBYTE(v12[2].__r_.__value_.__r.__words[2]);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = v12 + 2;
    v20 = SHIBYTE(v12[2].__r_.__value_.__r.__words[2]);
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_15:
      data = v19;
      size = v20;
      goto LABEL_18;
    }
  }

  data = v12[2].__r_.__value_.__l.__data_;
  size = v12[2].__r_.__value_.__l.__size_;
LABEL_18:
  v23 = data + size;
  v24 = memchr(data, 10, size);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (v25 == v23 || (v26 = v25 + 1, v25 + 1 == v23))
  {
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    do
    {
      v29 = *v26;
      if (v29 != 10)
      {
        *v25++ = v29;
      }

      ++v26;
    }

    while (v26 != v23);
    LOBYTE(v20) = *(&v12[2].__r_.__value_.__s + 23);
    if ((v20 & 0x80) == 0)
    {
LABEL_24:
      v27 = v19 + v20;
      v28 = v25 - v19;
      if (v20 >= (v25 - v19))
      {
        goto LABEL_25;
      }

LABEL_32:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v31 = v12[2].__r_.__value_.__l.__data_;
  v30 = v12[2].__r_.__value_.__l.__size_;
  v27 = &v31[v30];
  v28 = v25 - v31;
  if (v30 < v25 - v31)
  {
    goto LABEL_32;
  }

LABEL_25:
  if (v27 - v25 == -1)
  {
    if ((v20 & 0x80) != 0)
    {
      v34 = v12[2].__r_.__value_.__l.__data_;
      v12[2].__r_.__value_.__l.__size_ = v28;
      v34[v28] = 0;
      if (a2 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    }

    *(&v12[2].__r_.__value_.__s + 23) = v28 & 0x7F;
    v19->__r_.__value_.__s.__data_[v28] = 0;
  }

  else
  {
    std::string::__erase_external_with_move(v19, v28, v27 - v25);
  }

  if (a2 <= 1)
  {
LABEL_36:
    if (!a2)
    {
      v32 = _MergedGlobals_2;
      if (_MergedGlobals_2)
      {
        if (os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_DEFAULT))
        {
          v33 = &v43[2];
          if (SHIBYTE(v43[2].__r_.__value_.__r.__words[2]) < 0)
          {
            v33 = v33->__words[0];
          }

          *buf = 136315138;
          v48 = v33;
LABEL_54:
          _os_log_impl(&dword_296D7D000, v32, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_43:
  if (a2 == 2)
  {
    v35 = qword_2A18CA890;
    if (qword_2A18CA890 && os_log_type_enabled(qword_2A18CA890, OS_LOG_TYPE_DEBUG))
    {
      v36 = &v43[2];
      if (SHIBYTE(v43[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v36 = v36->__words[0];
      }

      *buf = 136315138;
      v48 = v36;
      _os_log_debug_impl(&dword_296D7D000, v35, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  else
  {
    v32 = qword_2A18CA898;
    if (qword_2A18CA898 && os_log_type_enabled(qword_2A18CA898, OS_LOG_TYPE_DEFAULT))
    {
      v37 = &v43[2];
      if (SHIBYTE(v43[2].__r_.__value_.__r.__words[2]) < 0)
      {
        v37 = v37->__words[0];
      }

      *buf = 136315138;
      v48 = v37;
      goto LABEL_54;
    }
  }

LABEL_55:
  v38 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  result = MEMORY[0x29C263A80](v45);
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::LogMessage *,std::shared_ptr<ctu::LogMessage>::__shared_ptr_default_delete<ctu::LogMessage,ctu::LogMessage>,std::allocator<ctu::LogMessage>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000296E24339)
  {
    if (((v2 & 0x8000000296E24339 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000296E24339))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000296E24339 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

void abm::debug::handleDebugPrintBinary(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAAAAAA00;
  ctu::assign();
  if (a1)
  {
    if (a1 != 1)
    {
      v7 = qword_2A18CA890;
      if (qword_2A18CA890)
      {
        if (os_log_type_enabled(qword_2A18CA890, OS_LOG_TYPE_DEBUG))
        {
          v8 = __p;
          if (v11 < 0)
          {
            v8 = __p[0];
          }

          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v7 = _MergedGlobals_2;
    if (_MergedGlobals_2 && os_log_type_enabled(_MergedGlobals_2, OS_LOG_TYPE_DEBUG))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

LABEL_15:
      *buf = 67109634;
      v13 = a4;
      v14 = 2080;
      v15 = a2;
      v16 = 2080;
      v17 = v8;
      _os_log_debug_impl(&dword_296D7D000, v7, OS_LOG_TYPE_DEBUG, "(%d) %s: %s", buf, 0x1Cu);
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (SHIBYTE(v11) < 0)
  {
LABEL_11:
    operator delete(__p[0]);
  }

LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_296DE10E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::asString@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 7;
  strcpy(a2, "Invalid");
  if (result <= 2)
  {
    *(a2 + 23) = 4;
    *a2 = (result << 16) | 0x52304254;
    *(a2 + 4) = 0;
  }

  return result;
}

{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 7;
  strcpy(a2, "Invalid");
  if (result <= 9)
  {
    if (result)
    {
      if (result == 1)
      {
        *(a2 + 3) = 1667593069;
        *a2 = 1831874609;
      }

      else if (result == 2)
      {
        *(a2 + 23) = 5;
        strcpy(a2, "1msec");
      }
    }

    else
    {
      *(a2 + 23) = 8;
      strcpy(a2, "1000msec");
    }
  }

  else if (result > 11)
  {
    if (result == 12)
    {
      *(a2 + 23) = 9;
      strcpy(a2, "TangierCG");
    }

    else if (result == 13)
    {
      *(a2 + 23) = 3;
      *a2 = 5915974;
    }
  }

  else
  {
    *(a2 + 23) = 9;
    if (result == 10)
    {
      strcpy(a2, "ModemSkin");
    }

    else
    {
      strcpy(a2, "TangierBG");
    }
  }

  return result;
}

uint64_t abm::convertBasebandCPMSPowerBudgetScale(unsigned __int16 *a1)
{
  if (*(a1 + 23) < 0)
  {
    v6 = *(a1 + 1);
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        if (**a1 == 1831874609 && *(*a1 + 3) == 1667593069)
        {
          return 1;
        }

        return 255;
      }

      if (v6 != 8)
      {
        if (v6 == 9)
        {
          v7 = *a1;
          if (**a1 != 0x696B536D65646F4DLL || *(*a1 + 8) != 110)
          {
            if (*v7 != 0x42726569676E6154 || *(v7 + 8) != 71)
            {
              v10 = *v7;
              v11 = *(v7 + 8);
              if (v10 == 0x43726569676E6154 && v11 == 71)
              {
                return 12;
              }

              return 255;
            }

            return 11;
          }

          return 10;
        }

        return 255;
      }

      if (**a1 != 0x6365736D30303031)
      {
        return 255;
      }

      return 0;
    }

    if (v6 != 3)
    {
      if (v6 == 5 && **a1 == 1702063409 && *(*a1 + 4) == 99)
      {
        return 2;
      }

      return 255;
    }

    a1 = *a1;
  }

  else
  {
    v1 = *(a1 + 23);
    if (v1 > 6)
    {
      if (v1 == 7)
      {
        if (*a1 == 1831874609 && *(a1 + 3) == 1667593069)
        {
          return 1;
        }

        return 255;
      }

      if (v1 != 8)
      {
        if (v1 == 9)
        {
          if (*a1 != 0x696B536D65646F4DLL || *(a1 + 8) != 110)
          {
            if (*a1 != 0x42726569676E6154 || *(a1 + 8) != 71)
            {
              if (*a1 == 0x43726569676E6154 && *(a1 + 8) == 71)
              {
                return 12;
              }

              return 255;
            }

            return 11;
          }

          return 10;
        }

        return 255;
      }

      if (*a1 != 0x6365736D30303031)
      {
        return 255;
      }

      return 0;
    }

    if (v1 != 3)
    {
      if (v1 == 5 && *a1 == 1702063409 && *(a1 + 4) == 99)
      {
        return 2;
      }

      return 255;
    }
  }

  v17 = bswap32(*a1 | (*(a1 + 2) << 16));
  v18 = v17 >= 0x46455A00;
  v19 = v17 > 0x46455A00;
  v20 = !v18;
  if (v19 == v20)
  {
    return 13;
  }

  else
  {
    return -1;
  }
}

uint64_t abm::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 1)
  {
    if (result != 2)
    {
LABEL_6:
      a2[23] = 7;
      strcpy(a2, "Invalid");
      return result;
    }

    a2[23] = 20;
    strcpy(a2, "Non-Emergency-Stewie");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 16;
        strcpy(a2, "Emergency-Stewie");
        return result;
      }

      goto LABEL_6;
    }

    a2[23] = 4;
    strcpy(a2, "None");
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
        a2[23] = 10;
        strcpy(a2, "24hr_Timer");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 7;
    strcpy(a2, "Profile");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 7;
        strcpy(a2, "ABMtool");
        return result;
      }

LABEL_8:
      a2[23] = 11;
      strcpy(a2, "UnSpecified");
      return result;
    }

    a2[23] = 2;
    strcpy(a2, "UI");
  }

  return result;
}

{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "Last_Used");
  }

  else if (result)
  {
    a2[23] = 11;
    strcpy(a2, "UnSpecified");
  }

  else
  {
    a2[23] = 7;
    strcpy(a2, "Default");
  }

  return result;
}

void radio::ARICommandDriver::create(NSObject **a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x170uLL);
  v7 = *a1;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a2;
  v9 = a2[1];
  v11[0] = v8;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::ARICommandDriver::ARICommandDriver(v6, &object, v11);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<radio::ARICommandDriver>::shared_ptr[abi:ne200100]<radio::ARICommandDriver,std::shared_ptr<radio::ARICommandDriver> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::ARICommandDriver>(radio::ARICommandDriver*)::{lambda(radio::ARICommandDriver*)#1},0>(a3, v6);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v10 = *a3;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = ___ZN5radio16ARICommandDriver4initEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_9_0;
  v13[4] = v10;
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((v10 + 8), v13);
}

void sub_296DE17C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  if (v10)
  {
    dispatch_release(v10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void radio::ARICommandDriver::init(radio::ARICommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio16ARICommandDriver4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_9_0;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t radio::ARICommandDriver::ARICommandDriver(uint64_t a1, dispatch_object_t *a2, uint64_t *a3)
{
  object = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v5 = a3[1];
  v10 = *a3;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::CommandDriver::CommandDriver();
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v6 = object;
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2A1E0DF90;
  *(a1 + 232) = 255;
  radio::OpMode::create(v6);
  v7 = *(a1 + 24);
  v9 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  radio::CommandDriver::getName(a1);
  ice::Client::create();
  if (v9)
  {
    dispatch_release(v9);
  }

  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = a1 + 288;
  *(a1 + 312) = a1 + 320;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = a1 + 344;
  return a1;
}

void radio::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E0E6B0;
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  v2 = this[25];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[23];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[21];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[19];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[18];
  if (v6)
  {
    _Block_release(v6);
  }

  if (this[17])
  {
    v7 = this[16];
    v8 = *(this[15] + 1);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    this[17] = 0;
    if (v7 != (this + 15))
    {
      do
      {
        v19 = *(v7 + 1);
        v18 = *(v7 + 2);
        if (v18)
        {
          _Block_release(v18);
        }

        operator delete(v7);
        v7 = v19;
      }

      while (v19 != (this + 15));
    }
  }

  if (this[14])
  {
    v10 = this[13];
    v11 = *(this[12] + 1);
    v12 = *v10;
    *(v12 + 8) = v11;
    *v11 = v12;
    this[14] = 0;
    if (v10 != (this + 12))
    {
      do
      {
        v21 = *(v10 + 1);
        v20 = *(v10 + 2);
        if (v20)
        {
          _Block_release(v20);
        }

        operator delete(v10);
        v10 = v21;
      }

      while (v21 != (this + 12));
    }
  }

  this[9] = &unk_2A1E0E830;
  v13 = this[11];
  if (v13)
  {
    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
      if (atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v13 + 24))(v13);
      }
    }
  }

  this[6] = &unk_2A1E0E8A0;
  v14 = this[8];
  if (v14)
  {
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 16))(v14);
      if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v14 + 24))(v14);
      }
    }
  }

  MEMORY[0x29C263A00](this + 5);
  v15 = this[4];
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = this[3];
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = this[2];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

void radio::ARICommandDriver::~ARICommandDriver(radio::ARICommandDriver *this)
{
  *this = &unk_2A1E0DF90;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v5, 2u);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 43));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 40));
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 36));
  v3 = *(this + 33);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 31);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    radio::CommandDriver::~CommandDriver(this);
  }

  else
  {
    radio::CommandDriver::~CommandDriver(this);
  }
}

{
  radio::ARICommandDriver::~ARICommandDriver(this);

  operator delete(v1);
}

uint64_t ___ZN5radio16ARICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(v1 + 232);
  v4 = (v1 + 288);
  v5 = *(v1 + 288);
  v6 = (v1 + 288);
  v7 = (v1 + 288);
  if (v5)
  {
    v8 = *(v1 + 288);
    while (1)
    {
      while (1)
      {
        v7 = v8;
        v9 = *(v8 + 28);
        if (v9 < 2)
        {
          break;
        }

        v8 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (v9 == 1)
      {
        break;
      }

      v8 = v7[1];
      if (!v8)
      {
        v6 = v7 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = v7;
    v7 = operator new(0x28uLL);
    *(v7 + 28) = 1;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = v10;
    *v6 = v7;
    v11 = **(v1 + 280);
    if (v11)
    {
      *(v1 + 280) = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 288), v7);
    v5 = *(v1 + 288);
    ++*(v1 + 296);
  }

  *(v7 + 8) = v3;
  v12 = *(v1 + 232);
  v13 = (v1 + 288);
  v14 = (v1 + 288);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v14 = v5;
        v15 = *(v5 + 28);
        if (v15 < 3)
        {
          break;
        }

        v5 = *v14;
        v13 = v14;
        if (!*v14)
        {
          goto LABEL_20;
        }
      }

      if (v15 == 2)
      {
        break;
      }

      v5 = v14[1];
      if (!v5)
      {
        v13 = v14 + 1;
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v16 = v14;
    v14 = operator new(0x28uLL);
    *(v14 + 28) = 2;
    *v14 = 0;
    v14[1] = 0;
    v14[2] = v16;
    *v13 = v14;
    v17 = **(v1 + 280);
    if (v17)
    {
      *(v1 + 280) = v17;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 288), v14);
    ++*(v1 + 296);
  }

  *(v14 + 8) = v12;
  v18 = *(v1 + 232);
  v19 = *(v1 + 288);
  v20 = (v1 + 288);
  v21 = (v1 + 288);
  if (v19)
  {
    v22 = *(v1 + 288);
    while (1)
    {
      while (1)
      {
        v21 = v22;
        v23 = *(v22 + 28);
        if (v23 < 4)
        {
          break;
        }

        v22 = *v21;
        v20 = v21;
        if (!*v21)
        {
          goto LABEL_30;
        }
      }

      if (v23 == 3)
      {
        break;
      }

      v22 = v21[1];
      if (!v22)
      {
        v20 = v21 + 1;
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    v24 = v21;
    v21 = operator new(0x28uLL);
    *(v21 + 28) = 3;
    *v21 = 0;
    v21[1] = 0;
    v21[2] = v24;
    *v20 = v21;
    v25 = **(v1 + 280);
    if (v25)
    {
      *(v1 + 280) = v25;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 288), v21);
    v19 = *(v1 + 288);
    ++*(v1 + 296);
  }

  *(v21 + 8) = v18;
  v26 = *(v1 + 232);
  v27 = (v1 + 288);
  if (v19)
  {
    while (1)
    {
      while (1)
      {
        v27 = v19;
        v28 = *(v19 + 28);
        if (v28 < 1)
        {
          break;
        }

        v19 = *v27;
        v4 = v27;
        if (!*v27)
        {
          goto LABEL_40;
        }
      }

      if ((v28 & 0x80000000) == 0)
      {
        break;
      }

      v19 = v27[1];
      if (!v19)
      {
        v4 = v27 + 1;
        goto LABEL_40;
      }
    }
  }

  else
  {
LABEL_40:
    v29 = v27;
    v27 = operator new(0x28uLL);
    *(v27 + 7) = 0;
    *(v27 + 8) = 0;
    *v27 = 0;
    v27[1] = 0;
    v27[2] = v29;
    *v4 = v27;
    v30 = **(v1 + 280);
    if (v30)
    {
      *(v1 + 280) = v30;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 288), v27);
    ++*(v1 + 296);
  }

  *(v27 + 8) = v26;
  v31 = *(v1 + 232);
  *(v1 + 304) = v31;
  v32 = (v1 + 320);
  v33 = *(v1 + 320);
  v34 = (v1 + 320);
  v35 = (v1 + 320);
  if (v33)
  {
    v36 = *(v1 + 320);
    while (1)
    {
      while (1)
      {
        v35 = v36;
        v37 = *(v36 + 28);
        if (v37 < 2)
        {
          break;
        }

        v36 = *v35;
        v34 = v35;
        if (!*v35)
        {
          goto LABEL_50;
        }
      }

      if (v37 == 1)
      {
        break;
      }

      v36 = v35[1];
      if (!v36)
      {
        v34 = v35 + 1;
        goto LABEL_50;
      }
    }
  }

  else
  {
LABEL_50:
    v38 = v35;
    v35 = operator new(0x28uLL);
    *(v35 + 28) = 1;
    *v35 = 0;
    v35[1] = 0;
    v35[2] = v38;
    *v34 = v35;
    v39 = **(v1 + 312);
    if (v39)
    {
      *(v1 + 312) = v39;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 320), v35);
    v33 = *(v1 + 320);
    ++*(v1 + 328);
  }

  *(v35 + 8) = v31;
  v40 = *(v1 + 232);
  v41 = (v1 + 320);
  v42 = (v1 + 320);
  if (v33)
  {
    while (1)
    {
      while (1)
      {
        v42 = v33;
        v43 = *(v33 + 28);
        if (v43 < 3)
        {
          break;
        }

        v33 = *v42;
        v41 = v42;
        if (!*v42)
        {
          goto LABEL_60;
        }
      }

      if (v43 == 2)
      {
        break;
      }

      v33 = v42[1];
      if (!v33)
      {
        v41 = v42 + 1;
        goto LABEL_60;
      }
    }
  }

  else
  {
LABEL_60:
    v44 = v42;
    v42 = operator new(0x28uLL);
    *(v42 + 28) = 2;
    *v42 = 0;
    v42[1] = 0;
    v42[2] = v44;
    *v41 = v42;
    v45 = **(v1 + 312);
    if (v45)
    {
      *(v1 + 312) = v45;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 320), v42);
    ++*(v1 + 328);
  }

  *(v42 + 8) = v40;
  v46 = *(v1 + 232);
  v47 = *(v1 + 320);
  v48 = (v1 + 320);
  v49 = (v1 + 320);
  if (v47)
  {
    v50 = *(v1 + 320);
    while (1)
    {
      while (1)
      {
        v49 = v50;
        v51 = *(v50 + 28);
        if (v51 < 4)
        {
          break;
        }

        v50 = *v49;
        v48 = v49;
        if (!*v49)
        {
          goto LABEL_70;
        }
      }

      if (v51 == 3)
      {
        break;
      }

      v50 = v49[1];
      if (!v50)
      {
        v48 = v49 + 1;
        goto LABEL_70;
      }
    }
  }

  else
  {
LABEL_70:
    v52 = v49;
    v49 = operator new(0x28uLL);
    *(v49 + 28) = 3;
    *v49 = 0;
    v49[1] = 0;
    v49[2] = v52;
    *v48 = v49;
    v53 = **(v1 + 312);
    if (v53)
    {
      *(v1 + 312) = v53;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 320), v49);
    v47 = *(v1 + 320);
    ++*(v1 + 328);
  }

  *(v49 + 8) = v46;
  v54 = *(v1 + 232);
  v55 = (v1 + 320);
  if (v47)
  {
    while (1)
    {
      while (1)
      {
        v55 = v47;
        v56 = *(v47 + 28);
        if (v56 < 1)
        {
          break;
        }

        v47 = *v55;
        v32 = v55;
        if (!*v55)
        {
          goto LABEL_80;
        }
      }

      if ((v56 & 0x80000000) == 0)
      {
        break;
      }

      v47 = v55[1];
      if (!v47)
      {
        v32 = v55 + 1;
        goto LABEL_80;
      }
    }
  }

  else
  {
LABEL_80:
    v57 = v55;
    v55 = operator new(0x28uLL);
    *(v55 + 7) = 0;
    *(v55 + 8) = 0;
    *v55 = 0;
    v55[1] = 0;
    v55[2] = v57;
    *v32 = v55;
    v58 = **(v1 + 312);
    if (v58)
    {
      *(v1 + 312) = v58;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 320), v55);
    ++*(v1 + 328);
  }

  *(v55 + 8) = v54;
  v59 = *(v1 + 232);
  v60 = (v1 + 344);
  v61 = *(v1 + 344);
  v62 = (v1 + 344);
  v63 = (v1 + 344);
  if (v61)
  {
    v64 = *(v1 + 344);
    while (1)
    {
      while (1)
      {
        v63 = v64;
        v65 = *(v64 + 28);
        if (v65 < 2)
        {
          break;
        }

        v64 = *v63;
        v62 = v63;
        if (!*v63)
        {
          goto LABEL_90;
        }
      }

      if (v65 == 1)
      {
        break;
      }

      v64 = v63[1];
      if (!v64)
      {
        v62 = v63 + 1;
        goto LABEL_90;
      }
    }
  }

  else
  {
LABEL_90:
    v66 = v63;
    v63 = operator new(0x28uLL);
    *(v63 + 28) = 1;
    *v63 = 0;
    v63[1] = 0;
    v63[2] = v66;
    *v62 = v63;
    v67 = **(v1 + 336);
    if (v67)
    {
      *(v1 + 336) = v67;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 344), v63);
    v61 = *(v1 + 344);
    ++*(v1 + 352);
  }

  *(v63 + 8) = v59;
  v68 = *(v1 + 232);
  v69 = (v1 + 344);
  v70 = (v1 + 344);
  if (v61)
  {
    while (1)
    {
      while (1)
      {
        v70 = v61;
        v71 = *(v61 + 28);
        if (v71 < 3)
        {
          break;
        }

        v61 = *v70;
        v69 = v70;
        if (!*v70)
        {
          goto LABEL_100;
        }
      }

      if (v71 == 2)
      {
        break;
      }

      v61 = v70[1];
      if (!v61)
      {
        v69 = v70 + 1;
        goto LABEL_100;
      }
    }
  }

  else
  {
LABEL_100:
    v72 = v70;
    v70 = operator new(0x28uLL);
    *(v70 + 28) = 2;
    *v70 = 0;
    v70[1] = 0;
    v70[2] = v72;
    *v69 = v70;
    v73 = **(v1 + 336);
    if (v73)
    {
      *(v1 + 336) = v73;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 344), v70);
    ++*(v1 + 352);
  }

  *(v70 + 8) = v68;
  v74 = *(v1 + 232);
  v75 = *(v1 + 344);
  v76 = (v1 + 344);
  v77 = (v1 + 344);
  if (v75)
  {
    v78 = *(v1 + 344);
    while (1)
    {
      while (1)
      {
        v77 = v78;
        v79 = *(v78 + 28);
        if (v79 < 4)
        {
          break;
        }

        v78 = *v77;
        v76 = v77;
        if (!*v77)
        {
          goto LABEL_110;
        }
      }

      if (v79 == 3)
      {
        break;
      }

      v78 = v77[1];
      if (!v78)
      {
        v76 = v77 + 1;
        goto LABEL_110;
      }
    }
  }

  else
  {
LABEL_110:
    v80 = v77;
    v77 = operator new(0x28uLL);
    *(v77 + 28) = 3;
    *v77 = 0;
    v77[1] = 0;
    v77[2] = v80;
    *v76 = v77;
    v81 = **(v1 + 336);
    if (v81)
    {
      *(v1 + 336) = v81;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 344), v77);
    v75 = *(v1 + 344);
    ++*(v1 + 352);
  }

  *(v77 + 8) = v74;
  v82 = *(v1 + 232);
  v83 = (v1 + 344);
  if (v75)
  {
    while (1)
    {
      while (1)
      {
        v83 = v75;
        v84 = *(v75 + 28);
        if (v84 < 1)
        {
          break;
        }

        v75 = *v83;
        v60 = v83;
        if (!*v83)
        {
          goto LABEL_120;
        }
      }

      if ((v84 & 0x80000000) == 0)
      {
        break;
      }

      v75 = v83[1];
      if (!v75)
      {
        v60 = v83 + 1;
        goto LABEL_120;
      }
    }
  }

  else
  {
LABEL_120:
    v85 = v83;
    v83 = operator new(0x28uLL);
    *(v83 + 7) = 0;
    *(v83 + 8) = 0;
    *v83 = 0;
    v83[1] = 0;
    v83[2] = v85;
    *v60 = v83;
    v86 = **(v1 + 336);
    if (v86)
    {
      *(v1 + 336) = v86;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 344), v83);
    ++*(v1 + 352);
  }

  *(v83 + 8) = v82;
  *(v1 + 364) = 0;
  v87 = *(v1 + 256);
  v98[0] = MEMORY[0x29EDCA5F8];
  v98[1] = 0x40000000;
  v98[2] = ___ZN5radio16ARICommandDriver4initEv_block_invoke_2;
  v98[3] = &__block_descriptor_tmp_9;
  v98[4] = v1;
  *buf = v98;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v87, 0, buf);
  v88 = *(v1 + 256);
  v97[0] = MEMORY[0x29EDCA5F8];
  v97[1] = 0x40000000;
  v97[2] = ___ZN5radio16ARICommandDriver4initEv_block_invoke_3;
  v97[3] = &__block_descriptor_tmp_4_2;
  v97[4] = v1;
  *buf = v97;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v88, 1, buf);
  v89 = *(v1 + 256);
  v90 = operator new(0x20uLL);
  v90->__shared_owners_ = 0;
  p_shared_owners = &v90->__shared_owners_;
  v90->__shared_weak_owners_ = 0;
  v90[1].__vftable = v1;
  v90->__vftable = &unk_2A1E0E990;
  *buf = MEMORY[0x29EDCA5F8];
  v100 = 1174405120;
  v101 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver4initEvEUb_E3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v102 = &__block_descriptor_tmp_160;
  v103 = v90 + 1;
  v104 = v90;
  atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  aBlock[3] = &unk_29EE5BED8;
  aBlock[4] = buf;
  v92 = _Block_copy(aBlock);
  v93 = v104;
  if (!v104 || atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  (v93->__on_zero_shared)(v93);
  std::__shared_weak_count::__release_weak(v93);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_126:
    (v90->__on_zero_shared)(v90);
    std::__shared_weak_count::__release_weak(v90);
  }

LABEL_127:
  *buf = v92;
  ice::Client::regIndicationInternal();
  if (*buf)
  {
    _Block_release(*buf);
  }

  ice::Client::setIndShouldWake(*(v1 + 256));
  v94 = *(v1 + 256);
  v96[0] = MEMORY[0x29EDCA5F8];
  v96[1] = 0x40000000;
  v96[2] = ___ZN5radio16ARICommandDriver4initEv_block_invoke_5;
  v96[3] = &__block_descriptor_tmp_8_1;
  v96[4] = v1;
  *buf = v96;
  ice::Client::regIndication<void({block_pointer})(unsigned char *,unsigned int)>(v94, 92798976, buf);
  ice::Client::setIndShouldWake(*(v1 + 256));
  return ice::Client::start(*(v1 + 256));
}

void sub_296DE294C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<radio::ARICommandDriver::RFRatSelection,int>::operator[](uint64_t **a1, int a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(v4 + 28);
        if (v7 <= a2)
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      if (v7 >= a2)
      {
        break;
      }

      v4 = v6[1];
      if (!v4)
      {
        v5 = v6 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = (a1 + 1);
LABEL_8:
    v8 = v6;
    v6 = operator new(0x28uLL);
    *(v6 + 7) = a2;
    *(v6 + 8) = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = v8;
    *v5 = v6;
    v9 = **a1;
    if (v9)
    {
      *a1 = v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v6);
    a1[2] = (a1[2] + 1);
  }

  return v6 + 4;
}

void ___ZN5radio16ARICommandDriver4initEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D Started", buf, 2u);
  }

  radio::CommandDriver::handleClientStateChanged_sync(v1);
  v3[0] = 0;
  v3[1] = 0;
  radio::ARICommandDriver::getOperatingMode(v1, v3);
}

void radio::ARICommandDriver::getOperatingMode(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN5radio16ARICommandDriver16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_26_0;
  v13[4] = a1;
  v13[5] = v6;
  v14 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (*a2)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a2 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v5, v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(uint64_t a1)
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

uint64_t ___ZN5radio16ARICommandDriver4initEv_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D Stopped", v4, 2u);
  }

  radio::CommandDriver::handleClientStateChanged_sync(v1);
  result = radio::CommandDriver::handleOperatingModeChanged_sync();
  *(v1 + 272) = 0;
  return result;
}

void ___ZN5radio16ARICommandDriver4initEv_block_invoke_5(uint64_t a1, const unsigned __int8 *a2)
{
  v96 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  __p.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_296E243A0;
  strcpy(__p.__r_.__value_.__l.__data_, "Log dump requested by baseband");
  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v4;
  v57 = v4;
  v55[2] = v4;
  v55[3] = v4;
  v55[0] = v4;
  v55[1] = v4;
  AriSdk::ARI_CsiBSPBBDumpInd_SDK::ARI_CsiBSPBBDumpInd_SDK(v55, a2);
  if (AriSdk::ARI_CsiBSPBBDumpInd_SDK::unpack(v55))
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_26;
  }

  v8 = *(&v56 + 1);
  v7 = v56;
  v9 = *(&v56 + 1) - v56;
  if (*(&v56 + 1) - v56 >= 0x7FFFFFFFFFFFFFF8uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 <= 0x16)
  {
    BYTE7(v75) = BYTE8(v56) - v56;
    p_dst = &__dst;
    if (*(&v56 + 1) == v56)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v9 | 7) == 0x17)
  {
    v15 = 25;
  }

  else
  {
    v15 = (v9 | 7) + 1;
  }

  p_dst = operator new(v15);
  *(&__dst + 1) = v9;
  *&v75 = v15 | 0x8000000000000000;
  *&__dst = p_dst;
  if (v8 != v7)
  {
LABEL_6:
    memmove(p_dst, v7, v9);
  }

LABEL_7:
  *(p_dst + v9) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v8 = *(&v56 + 1);
    v7 = v56;
  }

  *&__p.__r_.__value_.__l.__data_ = __dst;
  __p.__r_.__value_.__r.__words[2] = v75;
  if (v7 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  v12 = strnlen(v11, 0x400uLL);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ >= v12)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__l.__size_ = v12;
LABEL_24:
      p_p->__r_.__value_.__s.__data_[v12] = 0;
      v16 = v58;
      v6 = **(&v57 + 1) != 0;
      if (!v58)
      {
        goto LABEL_25;
      }

LABEL_22:
      v5 = *v16;
      goto LABEL_26;
    }
  }

  else if (v12 <= SHIBYTE(__p.__r_.__value_.__r.__words[2]))
  {
    *(&__p.__r_.__value_.__s + 23) = v12;
    p_p = &__p;
    goto LABEL_24;
  }

  std::string::append(&__p, v12 - size, 0);
  v16 = v58;
  v6 = **(&v57 + 1) != 0;
  if (v58)
  {
    goto LABEL_22;
  }

LABEL_25:
  v5 = 0;
LABEL_26:
  v54 = 0;
  v17 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v19 = Mutable;
  if (Mutable)
  {
    v54 = Mutable;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = *&__p.__r_.__value_.__l.__data_;
    *&v75 = *(&__p.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<__CFString const*,std::string>(v19, *MEMORY[0x29EDC8E18]);
  if (SBYTE7(v75) < 0)
  {
    operator delete(__dst);
  }

  ctu::cf::insert<__CFString const*,BOOL>(v19, *MEMORY[0x29EDC8F50], v6);
  ctu::cf::insert<__CFString const*,unsigned int>(v19, *MEMORY[0x29EDC8E00], v5, v17);
  v20 = *(v3 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__dst) = 138412290;
    *(&__dst + 4) = v19;
    _os_log_impl(&dword_296D7D000, v20, OS_LOG_TYPE_DEFAULT, "#I Baseband requested to dump logs\n%@", &__dst, 0xCu);
  }

  if (v19 && (v21 = CFGetTypeID(v19), v21 == CFDictionaryGetTypeID()))
  {
    CFRetain(v19);
    v22 = *(v3 + 56);
    v60 = v19;
    CFRetain(v19);
    v23 = v19;
  }

  else
  {
    v23 = 0;
    v22 = *(v3 + 56);
    v60 = 0;
  }

  v67 = 0;
  v68 = 0;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82 = v24;
  v83 = v24;
  v80 = v24;
  v81 = v24;
  v78 = v24;
  v79 = v24;
  v76 = v24;
  v77 = v24;
  __dst = v24;
  v75 = v24;
  v25 = *(v22 + 24);
  v84[0] = 10;
  v84[1] = &__dst;
  v85[0] = 0;
  v85[1] = v25;
  pthread_mutex_lock(v25);
  v26 = *(v22 + 8);
  if (!v26)
  {
    v28 = *v22;
    goto LABEL_51;
  }

  explicit = atomic_load_explicit(v26 + 2, memory_order_acquire);
  v28 = *v22;
  if (explicit == 1)
  {
    v29 = *v28;
    v30 = *(v22 + 16);
    if (v30 == *v28)
    {
      v30 = *(v29 + 8);
      *&v69 = v30;
      if (v29 == v30)
      {
LABEL_48:
        *(v22 + 16) = v30;
        goto LABEL_49;
      }
    }

    else
    {
      *&v69 = *(v22 + 16);
    }

    v31 = v30[2];
    if (*(v31 + 24))
    {
      v30 = v30[1];
    }

    else
    {
      v30 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::erase(v29, (v31 + 64), &v69);
      v28 = *v22;
    }

    goto LABEL_48;
  }

LABEL_49:
  v26 = *(v22 + 8);
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 2, 1u, memory_order_relaxed);
  }

LABEL_51:
  v32 = v68;
  v67 = v28;
  v68 = v26;
  if (v32)
  {
    if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v32 + 16))(v32);
      if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v32 + 24))(v32);
      }
    }
  }

  pthread_mutex_unlock(v85[1]);
  v33 = v84[1];
  if (v84[1])
  {
    if (v85[0] > 0)
    {
      v52 = v84[1] + 16 * v85[0];
      do
      {
        v53 = *(v52 - 1);
        if (v53)
        {
          if (atomic_fetch_add(v53 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v53 + 16))(v53);
            if (atomic_fetch_add(v53 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v53 + 24))(v53);
            }
          }
        }

        v52 -= 16;
      }

      while (v52 > v33);
    }

    if (v84[0] >= 0xB)
    {
      operator delete(v84[1]);
    }
  }

  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v87 = v34;
  v88 = v34;
  *v85 = v34;
  v86 = v34;
  v83 = v34;
  *v84 = v34;
  v81 = v34;
  v82 = v34;
  v79 = v34;
  v80 = v34;
  v77 = v34;
  v78 = v34;
  v75 = v34;
  v76 = v34;
  __dst = v34;
  LOBYTE(__dst) = 0;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  v90 = 10;
  v91 = &__dst + 8;
  v92 = 0;
  v95 = 0;
  v93 = &v60;
  v94 = 0;
  v35 = v67;
  v36 = *v67;
  v64 = &__dst;
  v65 = v22;
  v66 = v36;
  *&v62 = *(v36 + 8);
  *(&v62 + 1) = v36;
  *&v63 = &__dst;
  *(&v63 + 1) = v36;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(&v62);
  v61[0] = *v35;
  v61[1] = v61[0];
  v61[2] = &__dst;
  v61[3] = v61[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(v61);
  v69 = v62;
  v70 = v63;
  v37 = v61[0];
  v38 = v62;
  if (v62 == v61[0])
  {
    if (HIDWORD(v94) <= v94)
    {
      goto LABEL_87;
    }

LABEL_86:
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::force_cleanup_connections(v65, v66);
    goto LABEL_87;
  }

  v39 = v70;
  if ((*v70 & 1) == 0)
  {
    v40 = **(v70 + 272);
    v41 = *(*(v69 + 16) + 32);
    v71 = v40;
    if (v40)
    {
      CFRetain(v40);
    }

    v42 = *(v41 + 24);
    if (!v42)
    {
      std::runtime_error::runtime_error(&v73, "call to empty boost::function");
      v73.__vftable = &unk_2A1E0C118;
      boost::throw_exception<boost::bad_function_call>(&v73);
    }

    v43 = *((v42 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v71 = 0;
    cf = v40;
    v43(v41 + 32, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((*v39 & 1) == 0)
    {
      *v39 = 1;
    }
  }

  *&v69 = *(v38 + 8);
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(&v69);
  v44 = v70;
  if (*v70 == 1)
  {
    *v70 = 0;
  }

  for (i = v69; v69 != v37; i = v69)
  {
    v46 = **(v44 + 272);
    v47 = *(*(i + 16) + 32);
    v71 = v46;
    if (v46)
    {
      CFRetain(v46);
    }

    v48 = *(v47 + 24);
    if (!v48)
    {
      std::runtime_error::runtime_error(&v73, "call to empty boost::function");
      v73.__vftable = &unk_2A1E0C118;
      boost::throw_exception<boost::bad_function_call>(&v73);
    }

    v49 = *((v48 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v71 = 0;
    cf = v46;
    v49(v47 + 32, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    if ((*v44 & 1) == 0)
    {
      *v44 = 1;
    }

    *&v69 = *(i + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(&v69);
    v44 = v70;
    if (*v70 == 1)
    {
      *v70 = 0;
    }
  }

  if (*(v64 + 71) > *(v64 + 70))
  {
    goto LABEL_86;
  }

LABEL_87:
  boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(&__dst);
  v50 = v68;
  if (v68)
  {
    if (atomic_fetch_add(v68 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v50 + 16))(v50);
      if (atomic_fetch_add(v50 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v50 + 24))(v50);
      }
    }
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v23)
  {
    CFRelease(v23);
    v19 = v54;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  MEMORY[0x29C263F40](v55);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v51 = *MEMORY[0x29EDCA608];
}